package ascript
{
	import flash.events.MouseEvent;
	import flash.events.*;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.display.*;
	import flash.net.*;
	import fl.transitions.*;
	import fl.transitions.Tween;
	import fl.transitions.TweenEvent;
	import fl.transitions.easing.*;
	import com.greensock.*;

	public class menu extends MovieClip
	{
		private var _xml:XML;//XML文档数据
		private var _loader:MovieClip;//加载外部swf文件的容器
		private var _item:Class;//主菜单皮肤
		private var _sub:Class;//子菜单皮肤
		private var _line:Class;//间隔线皮肤
		private var _x:int;//菜单X轴
		private var _y:int;//菜单Y轴
		private var _distance:int;//主菜单单个宽度

		/**
		 * 构造函数
		 * @xml xml文件路径
		 * @loader swf容器
		 * @item 主菜单皮肤
		 * @sub 子菜单皮肤
		 * @line 间隔线皮肤
		 * @x 主菜单X轴
		 * @y 主菜单Y轴
		 * @distance 单个宽度
		 * @return
		 */
		public function menu(xml:String,loader:MovieClip,item:Class,sub:Class,line:Class,x:int,y:int,distance:int):void
		{
			_loader = loader;
			_item = item;
			_sub = sub;
			_line = line;
			_x = x;
			_y = y;
			_distance = distance;
			loadXML(xml);
		}
		//加载XML文档
		private function loadXML(xml:String):void
		{
			var xmlLoader = new URLLoader();
			xmlLoader.load(new URLRequest(xml));
			xmlLoader.addEventListener(Event.COMPLETE, navigation);
		}
		//加载主导航
		private function navigation(e:Event):void
		{
			var loader = e.currentTarget as URLLoader;
			_xml = XML(loader.data);
			var i:int = 0;
			var w:int = 0;//记录线条宽度
			for each (var x:XML in _xml.*)
			{
				var box:MovieClip = new MovieClip();
				if (i > 0)
				{
					var line:MovieClip=MovieClip(new _line());
					line.x = _x + i * _distance + w;
					line.y = _y;
					w +=  line.width;
					addChild(line);
				}

				var item:MovieClip=MovieClip(new _item());
				item.txt.text = x. @ name;
				item.u = x. @ url;
				item.x = _x + i * _distance + w;
				item.y = _y;
				i++;
				with (item)
				{
					addEventListener(MouseEvent.MOUSE_OVER,over);
					addEventListener(MouseEvent.MOUSE_OUT,out);
					addEventListener(MouseEvent.CLICK,click);
				}
				with (box)
				{
					addEventListener(MouseEvent.ROLL_OVER,overMain);
					addEventListener(MouseEvent.ROLL_OUT,outMain);
					addEventListener(MouseEvent.CLICK,click);
				}
				box.xPosition = item.x - 10;
				box.yPosition = item.y + 40;
				box.i = i;
				box.xml = x;
				box.addChild(item);
				addChild(box);
			}
		}
		//画遮照层，底边圆角
		function drawMask(w:int,h:int):Sprite
		{
			var child:Sprite = new Sprite();
			child.graphics.beginFill(0x7D4713);
			child.graphics.drawRoundRect(0,0,w,h, 9);
			child.graphics.endFill();
			var s:Sprite=new Sprite();
			s.graphics.beginFill(0x7D4713);
			s.graphics.drawRect(0,0,w,10);
			s.graphics.endFill();
			child.addChild(s);
			return child;
		}
		//画矩形
		function drawRectangle(w:int,h:int):Sprite
		{
			var rectangle:Sprite=new Sprite();
			rectangle.graphics.beginFill(0x7D4713);
			rectangle.graphics.drawRect(0,0,w,h);
			rectangle.graphics.endFill();
			return rectangle;
		}
		//鼠标经过事件
		private function over(e:MouseEvent):void
		{
			var mc = e.currentTarget as MovieClip;
			TweenMax.to(mc,1,{tint:0x411200});
		}
		//鼠标离开事件
		private function out(e:MouseEvent):void
		{
			var mc = e.currentTarget as MovieClip;
			TweenMax.to(mc,1,{removeTint:true});
		}
		//鼠标经过主菜单事件
		private function overMain(e:MouseEvent):void
		{
			var mc = e.currentTarget as MovieClip;
			var box:MovieClip = new MovieClip();
			var xml:XML = mc.xml;
			var i:int = 0;
			mc.sub = false;
			for each (var x:XML in xml.*)
			{
				var item:MovieClip=MovieClip(new _sub());
				item.txt.text = x. @ name;
				item.u = x. @ url;
				item.x = 30;
				item.y = i * 25;
				i++;
				with (item)
				{
					addEventListener(MouseEvent.MOUSE_OVER,over);
					addEventListener(MouseEvent.MOUSE_OUT,out);
					addEventListener(MouseEvent.CLICK,click);
				}
				box.addChild(item);
			}
			if (i > 0)
			{
				//遮照bg
				var mask1:Sprite = drawMask(130,box.height);
				mask1.x = mc.xPosition;
				mask1.y = mc.yPosition;
				mask1.name = "mask1_" + mc.i;
				mc.addChild(mask1);
				//遮照box
				var mask2:Sprite = drawMask(130,box.height);
				mask2.x = mc.xPosition;
				mask2.y = mc.yPosition;
				mask2.name = "mask2_" + mc.i;
				mc.addChild(mask2);
				//加载子菜单背景				
				var rectangle:Sprite = drawRectangle(130,box.height);
				rectangle.x = mc.xPosition;
				rectangle.y = mc.yPosition;
				rectangle.mask = mask1;
				rectangle.alpha = 0.8;
				var bg:MovieClip = new MovieClip();
				bg.addChild(rectangle);
				bg.name = "bg_" + mc.i;
				//淡入
				TransitionManager.start(bg,{type:Fade,direction:Transition.IN,duration:1,easing:None.easeNone});
				mc.addChild(bg);
				//加载子菜单集
				box.x = mc.xPosition;
				box.y = mc.yPosition;
				box.name = "box_" + mc.i;
				box.mask = mask2;
				mc.addChild(box);
				//记录是否有子菜单
				mc.sub = true;
				//背景透明

				new Tween(box,"y",Strong.easeOut,box.y - 30,box.y,2,true);
			}
		}
		//鼠标离开主菜单事件
		private function outMain(e:MouseEvent):void
		{
			var mc = e.currentTarget as MovieClip;
			if (mc.sub)
			{
				//将背景移box再淡出
				var box:MovieClip = new MovieClip();
				box.addChild(mc.getChildByName("bg_"+mc.i));
				//淡出
				TransitionManager.start(box,{type:Fade,direction:Transition.OUT,duration:1,easing:None.easeNone});
				mc.addChild(box);
				mc.removeChild(mc.getChildByName("box_"+mc.i));
				mc.removeChild(mc.getChildByName("mask1_"+mc.i));
				mc.removeChild(mc.getChildByName("mask2_"+mc.i));
			}
		}
		//鼠标单击事件
		private function click(e:MouseEvent):void
		{
			var mc = e.currentTarget as MovieClip;
			var url:String = mc.u;
			var reg:RegExp = /http:\/\/.?/g;
			if (url != "")
			{
				if (url.match(reg).length > 0)
				{
					var go:URLRequest = new URLRequest(url);
					navigateToURL(go,"_blank");
				}
				else
				{
					var loader:Loader = new Loader();
					loader.load(new URLRequest(url));
					while (_loader.numChildren > 0)
					{
						//清空容器
						_loader.removeChildAt(0);
					}
					_loader.addChild(loader);
				}
			}
		}
	}

}