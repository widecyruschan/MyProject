package cn.com.vfocus.pictures
{
    import com.greensock.*;
    import fl.transitions.easing.*;
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;
    import flash.utils.*;

    public class picflyclass extends MovieClip
    {
        private var loadpicnum:int = -1;
        private var picMini:Number = 0;
        private var picMax:Number = 5;
        private var picHeng:int = 14;
        private var picShu:int = 0;
        private var jianggeGao:Number = 22;
        private var jianggeHeng:Number = 17;
        private var pointNow:Number = 0;
        private var totalpage:int = 0;
        private var picUrlA:Array;
        private var outUrlA:Array;
        private var titleA:Array;
        private var loader:URLLoader;
        private var url:URLRequest;
        private var myxml:XML;
        private var jiange:Number = 5;
        private var tuziRanTimer:Timer;

        public function picflyclass() : void
        {
            this.picUrlA = new Array();
            this.outUrlA = new Array();
            this.titleA = new Array();
            this.loader = new URLLoader();
            this.url = new URLRequest("xml/picfly.php");
            this.tuziRanTimer = new Timer(this.jiange * 1000);
            return;
        }// end function

        public function init() : void
        {
            this.loader.addEventListener(Event.COMPLETE, this.loaded);
            this.loader.load(this.url);
            return;
        }// end function

        private function loaded(event:Event)
        {
            var _loc_3:MovieClip = null;
            var _loc_4:Number = NaN;
            var _loc_5:Number = NaN;
            this.myxml = new XML(event.target.data);
            this.totalpage = this.myxml.data.length();
            var _loc_2:int = 0;
            while (_loc_2 < this.totalpage)
            {
                
                this.picUrlA[_loc_2] = this.myxml.data[_loc_2].@picUrl;
                this.outUrlA[_loc_2] = this.myxml.data[_loc_2].@outUrl;
                this.titleA[_loc_2] = this.myxml.data[_loc_2].@title;
                _loc_3 = new picItem();
                _loc_3.setId(_loc_2);
                _loc_3.setData(this.outUrlA[_loc_2]);
                _loc_3.setTitle(this.titleA[_loc_2]);
                _loc_3.loadpic("../"+this.picUrlA[_loc_2]);
                _loc_4 = 52;
                _loc_5 = 52;
                _loc_3.x = (_loc_4 + this.jianggeHeng) * (_loc_2 % this.picHeng);
                _loc_3.y = (_loc_5 + this.jianggeGao) * int(_loc_2 / this.picHeng);
                _loc_3.name = "lt" + _loc_2;
                _loc_3.alpha = 1;
                TweenLite.from(_loc_3, 0.2, {alpha:0, x:_loc_3.x + 60, y:_loc_3.y + 50, scaleX:0.1, scaleY:0.1, ease:Strong.easeOut, delay:_loc_2 * 0.01});
                this.addChild(_loc_3);
                _loc_2++;
            }
            return;
        }// end function

        public function caidanHD() : void
        {
            trace("news caidan");
            this.loader.addEventListener(Event.COMPLETE, this.loaded);
            var _loc_1:* = new URLRequest("xml/picfly2.php");
            this.loader.load(_loc_1);
            return;
        }// end function

    }
}
