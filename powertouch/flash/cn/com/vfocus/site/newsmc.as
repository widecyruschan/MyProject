package cn.com.vfocus.site
{
    import com.greensock.*;
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;
    import flash.utils.*;

    final public class newsmc extends MovieClip
    {
        private var menuMini:int = 0;
        private var menuMax:int = 4;
        private var menuName:String = "nt";
        private var totalpage:int = 1;
        private var thispo:int = -1;
        private var overpo:int = 0;
        private var itjiange:int = 36;
        private var urlAr:Array;
        private var titleAr:Array;
        private var dateAr:Array;
        private var request:URLRequest;
        private var loader:URLLoader;
        private var url:URLRequest;
        private var myxml:XML;
        private var itemY:Array;
        private var tempAr:Array;
        private var runnowId:int = 0;
        private var jiange:Number = 3;
        private var tuziRanTimer:Timer;

        public function newsmc()
        {
            this.urlAr = new Array();
            this.titleAr = new Array();
            this.dateAr = new Array();
            this.loader = new URLLoader();
            this.url = new URLRequest("xml/flashnews.php");
            this.itemY = [-36, 0, 36, 72, 108, 144];
            this.tempAr = new Array();
            this.tuziRanTimer = new Timer(this.jiange * 1000);
            this.loader.addEventListener(Event.COMPLETE, this.loaded);
            this.loader.load(this.url);
            return;
        }// end function

        private function init()
        {
            var _loc_2:MovieClip = null;
            var _loc_1:* = this.menuMini;
            while (_loc_1 < this.menuMax)
            {
                
                _loc_2 = new ntitem();
                _loc_2.buttonMode = true;
                _loc_2.id = _loc_1;
                _loc_2.name = "nt" + _loc_1;
                _loc_2.y = this.itjiange * _loc_1;
                _loc_2.x = 0;
                _loc_2.titlet.text = this.titleAr[_loc_1];
                _loc_2.dayt.text = this.dateAr[_loc_1];
                _loc_2.addEventListener(MouseEvent.MOUSE_OVER, this.IdpOverHandler);
                _loc_2.addEventListener(MouseEvent.MOUSE_OUT, this.IdpOutHandler);
                _loc_2.addEventListener(MouseEvent.MOUSE_DOWN, this.IdpClHandler);
                this.addChild(_loc_2);
                _loc_1++;
            }
            this.demenu();
            this.tuziRanTimer.addEventListener("timer", this.timerHd);
            this.tuziRanTimer.start();
            return;
        }// end function

        private function loaded(event:Event)
        {
            this.myxml = new XML(event.target.data);
            this.totalpage = this.myxml.data.length();
            this.menuMax = this.totalpage;
            var _loc_2:int = 0;
            while (_loc_2 < this.totalpage)
            {
                
                this.urlAr[_loc_2] = this.myxml.data[_loc_2].@url;
                this.titleAr[_loc_2] = this.myxml.data[_loc_2].@title;
                this.dateAr[_loc_2] = this.myxml.data[_loc_2].@date;
                _loc_2++;
            }
            var _loc_3:int = 0;
            while (_loc_3 < this.menuMax)
            {
                
                this.tempAr.push(_loc_3 * this.itjiange);
                _loc_3++;
            }
            this.init();
            return;
        }// end function

        private function timerHd(event:TimerEvent) : void
        {
            var _loc_3:MovieClip = null;
            trace("runnowId" + this.runnowId);
            if (this.runnowId < this.menuMax)
            {
                var _loc_5:* = this.runnowId + 1;
                this.runnowId = _loc_5;
            }
            else
            {
                this.runnowId = 0;
                trace("runnowId" + this.runnowId + "*************");
            }
            var _loc_2:int = 0;
            while (_loc_2 < this.menuMax)
            {
                
                _loc_3 = this.getChildByName("nt" + _loc_2) as MovieClip;
                if (_loc_2 < this.runnowId)
                {
                    if (this.runnowId - _loc_2 == 1)
                    {
                        TweenLite.to(_loc_3, 0, {y:this.tempAr[this.menuMax - (this.runnowId - _loc_2)]});
                    }
                    else
                    {
                        TweenLite.to(_loc_3, 0.5, {y:this.tempAr[this.menuMax - (this.runnowId - _loc_2)]});
                    }
                }
                else
                {
                    TweenLite.to(_loc_3, 0.5, {y:this.tempAr[_loc_2 - this.runnowId]});
                }
                _loc_2++;
            }
            return;
        }// end function

        private function IdpOverHandler(event:Event) : void
        {
            event.currentTarget.titlet.textColor = 15628560;
            event.currentTarget.dayt.textColor = 15628560;
            this.overpo = this.thispo;
            return;
        }// end function

        private function IdpOutHandler(event:Event) : void
        {
            this.demenu();
            this.overpo = event.currentTarget.id;
            return;
        }// end function

        private function IdpClHandler(event:Event) : void
        {
            var _loc_2:* = this.urlAr[event.currentTarget.id];
            this.thispo = event.currentTarget.id;
            this.demenu();
            navigateToURL(new URLRequest(_loc_2), "_blank");
            return;
        }// end function

        private function demenu()
        {
            var _loc_2:MovieClip = null;
            var _loc_1:* = this.menuMini;
            while (_loc_1 < this.menuMax)
            {
                
                _loc_2 = this.getChildByName("nt" + _loc_1) as MovieClip;
                _loc_2.titlet.textColor = 9474192;
                _loc_2.dayt.textColor = 9474192;
                _loc_1++;
            }
            return;
        }// end function

        public function getpointNow() : int
        {
            return this.thispo;
        }// end function

        public function getoverpo() : int
        {
            return this.overpo;
        }// end function

        public function setpointNow(param1:int) : void
        {
            this.thispo = param1;
            this.demenu();
            return;
        }// end function

        public function setoverpo(param1:int) : void
        {
            this.overpo = param1;
            this.thispo = param1;
            this.demenu();
            return;
        }// end function

    }
}
