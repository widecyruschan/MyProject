package cn.com.vfocus.main
{
    import cn.com.vfocus.pictures.*;
    import com.greensock.*;
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;

    public class Shell extends MovieClip
    {
        public var mymp:MovieClip;
        public var mynew:MovieClip;
        public var myload2:MovieClip;
        private var loadbarWaitTime:Number = 0.1;
        private var mainLoader:Loader;
        private var loadbarLoader:Loader;
        private var urlReq:URLRequest;
        private var gohomeTF:Boolean = true;
        private var homeurl:String = "#";
        private var loaderbarRUL:String = "../swf/loadbar.swf";
        private var allSwfUrl:Array;
        private var mainSecN:Number = 0;
        private var thispoi:int = 0;
        private var overpoi:int = 0;
        private var showmoreTF:Boolean = true;
        private var arrKeySet:Array;
        private var arrKeyGet:Array;

        public function Shell()
        {
            this.mainLoader = new Loader();
            this.loadbarLoader = new Loader();
            this.urlReq = new URLRequest();
            this.allSwfUrl = ["picTurn.swf", "flash/map2.swf", "sec3.swf", "sec4.swf", "sec5.swf", "swf/sec6.swf", "swf/sec7.swf"];
            this.arrKeySet = [];
            this.arrKeyGet = [52, 50, 13];
            addFrameScript(0, this.frame1, 50, this.frame51, 70, this.frame71);
            stage.scaleMode = StageScaleMode.NO_SCALE;
            stage.displayState = StageDisplayState.NORMAL;
            stage.align = StageAlign.TOP;
            this.stage.addEventListener(Event.RESIZE, this.resizeHandler);
            stage.addEventListener(KeyboardEvent.KEY_UP, this.keyupHandler);
            stage.tabChildren = false;
            this.init();
            return;
        }// end function

        private function init() : void
        {
            this.myload2.addChild(new pv3dCube1());
            this.mynew.morebtn.buttonMode = true;
            this.mynew.morebtn.addEventListener(MouseEvent.ROLL_OVER, this.morebtnOverHandler);
            this.mynew.morebtn.addEventListener(MouseEvent.MOUSE_OUT, this.morebtnOutHandler);
            this.mynew.morebtn.addEventListener(MouseEvent.MOUSE_DOWN, this.morebtnClHandler);
            this.mynew.morebtn.wt2.visible = false;
            this.mynew.morebtn.wt1.visible = true;
            this.myload2.getChildAt(0).addEventListener("changebigpic", this.cgHandler);
            this.resizeHandler();
            this.setnewsbtn();
            return;
        }// end function

        private function setnewsbtn() : void
        {
            var _loc_1:int = 0;
            while (_loc_1 < 4)
            {
                
                this.mymp["mp" + _loc_1].gotoAndStop(1);
                this.mymp["mp" + _loc_1].id = _loc_1;
                this.mymp["mp" + _loc_1].buttonMode = true;
                this.mymp["mp" + _loc_1].addEventListener(MouseEvent.MOUSE_DOWN, this.setnewsHD);
                _loc_1++;
            }
            this.mymp["mp" + this.overpoi].gotoAndStop(2);
            return;
        }// end function

        private function setnewsHD(event:Event) : void
        {
            var _loc_2:Object = null;
            if (this.overpoi != event.currentTarget.id)
            {
                _loc_2 = this.myload2.getChildAt(0) as Object;
                _loc_2.turnCube(event.currentTarget.id);
                this.setnewsde();
                event.currentTarget.gotoAndStop(2);
                this.overpoi = event.currentTarget.id;
            }
            return;
        }// end function

        private function setnewsde() : void
        {
            var _loc_1:int = 0;
            while (_loc_1 < 4)
            {
                
                this.mymp["mp" + _loc_1].gotoAndStop(1);
                _loc_1++;
            }
            return;
        }// end function

        private function morebtnOverHandler(event:Event) : void
        {
            event.currentTarget.wt1.gotoAndStop(2);
            event.currentTarget.wt2.gotoAndStop(2);
            return;
        }// end function

        private function morebtnOutHandler(event:Event) : void
        {
            event.currentTarget.wt2.gotoAndStop(1);
            event.currentTarget.wt1.gotoAndStop(1);
            return;
        }// end function

        private function morebtnClHandler(event:Event) : void
        {
            var e:* = event;
            if (this.showmoreTF)
            {
                this.showmoreTF = false;
                e.currentTarget.wt1.visible = false;
                e.currentTarget.wt2.visible = true;
                this.mynew.gotoAndPlay(2);
                this.gotoAndPlay(2);
                TweenLite.delayedCall(0.2, function ()
            {
                mynew.picni.gotoAndPlay(2);
                return;
            }// end function
            );
            }
            else
            {
                this.showmoreTF = true;
                e.currentTarget.wt2.visible = false;
                e.currentTarget.wt1.visible = true;
                this.mynew.gotoAndPlay("end");
                this.gotoAndStop(1);
                try
                {
                    this.mynew.empfly.removeChild(this.mynew.empfly.getChildAt(0));
                }
                catch (errObject:Error)
                {
                    trace("出错啦~~~");
                }
            }
            return;
        }// end function

        private function flypic() : void
        {
            var _loc_1:* = new picflyclass();
            _loc_1.x = 8;
            _loc_1.y = 40;
            this.mynew.empfly.addChild(_loc_1);
            _loc_1.init();
            return;
        }// end function

        private function cgHandler(event:Event) : void
        {
            var _loc_2:* = this.myload2.getChildAt(0) as Object;
            this.overpoi = _loc_2.getpointNow();
            this.setnewsde();
            this.mymp["mp" + this.overpoi].gotoAndStop(2);
            return;
        }// end function

        private function newsmcHandler(event:Event) : void
        {
            this.overpoi = this.mynew.newsmc.getoverpo();
            var _loc_2:* = this.myload2.getChildAt(0) as Object;
            _loc_2.setpointNow(this.overpoi);
            return;
        }// end function

        private function resizeHandler(event:Event = null) : void
        {
            var _loc_2:int = 446;
            var _loc_3:int = 964;
            var _loc_4:* = stage.stageWidth;
            var _loc_5:* = stage.stageHeight;
            this.myload2.y = (_loc_2 - _loc_5) / 2;
            this.mynew.y = 0;
            this.mynew.x = (_loc_4 - _loc_3) * 0.5;
            this.mymp.x = this.mynew.x + 18;
            trace("resize");
            return;
        }// end function

        private function keyupHandler(event:KeyboardEvent) : void
        {
            this.arrKeySet.push(event.keyCode);
            trace(this.arrKeyGet);
            trace(this.arrKeySet);
            if (this.arrKeySet.length < this.arrKeyGet.length)
            {
                return;
            }
            if (this.arrKeySet.length > this.arrKeyGet.length)
            {
                this.arrKeySet.splice(0, 1);
            }
            var _loc_2:uint = 0;
            var _loc_3:* = this.arrKeyGet.length;
            while (_loc_2 < _loc_3)
            {
                
                if (this.arrKeySet[_loc_2] != this.arrKeyGet[_loc_2])
                {
                    return;
                }
                _loc_2 = _loc_2 + 1;
            }
            trace("彩蛋");
            this.caidanHD();
            return;
        }// end function

        private function caidanHD() : void
        {
            var tempmc:MovieClip;
            try
            {
                tempmc = this.mynew.empfly.getChildAt(0) as MovieClip;
                tempmc.caidanHD();
            }
            catch (errObject:Error)
            {
                trace("出错啦~~~");
            }
            return;
        }// end function

        function frame1()
        {
            stop();
            return;
        }// end function

        function frame51()
        {
            this.flypic();
            return;
        }// end function

        function frame71()
        {
            stop();
            return;
        }// end function

    }
}
