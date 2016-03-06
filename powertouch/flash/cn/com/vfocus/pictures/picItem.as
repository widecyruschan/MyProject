package cn.com.vfocus.pictures
{
    import com.greensock.*;
    import fl.transitions.easing.*;
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;

    public class picItem extends MovieClip
    {
        public var emp:MovieClip;
        public var tipmc:MovieClip;
        private var picContain:MovieClip;
        private var outUrl:String;
        private var Title:String;
        private var Copy:String;
        private var id:int;
        private var _reflection:Reflection;

        public function picItem()
        {
            this.picContain = new MovieClip();
            this.buttonMode = true;
            this.tipmc.alpha = 0;
            this.addEventListener(MouseEvent.ROLL_OVER, this.OverHandler);
            this.addEventListener(MouseEvent.ROLL_OUT, this.OutHandler);
            this.addEventListener(MouseEvent.MOUSE_DOWN, this.downHD);
            return;
        }// end function

        private function OverHandler(event:Event) : void
        {
            this.tipmc.alpha = 0;
            TweenLite.to(this.tipmc, 0.6, {alpha:0.7, ease:Strong.easeOut});
            return;
        }// end function

        private function OutHandler(event:Event) : void
        {
            TweenLite.to(this.tipmc, 0.4, {alpha:0, ease:Strong.easeOut});
            return;
        }// end function

        private function downHD(event:Event) : void
        {
            navigateToURL(new URLRequest(this.outUrl), "_blank");
            trace(this.id);
            return;
        }// end function

        public function loadpic(param1:String) : void
        {
            var _loc_2:* = new Loader();
            _loc_2.contentLoaderInfo.addEventListener(Event.COMPLETE, this.completeHandler);
            _loc_2.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, this.progressHandler);
            _loc_2.load(new URLRequest(param1));
            return;
        }// end function

        private function progressHandler(event:ProgressEvent)
        {
            return;
        }// end function

        private function completeHandler(event:Event)
        {
            this.emp.addChild(event.target.content);
            return;
        }// end function

        public function setId(param1:int) : void
        {
            this.id = param1;
            return;
        }// end function

        public function setData(param1:String) : void
        {
            this.outUrl = param1;
            return;
        }// end function

        public function setTitle(param1:String) : void
        {
            this.Title = param1;
            this.tipmc._thisname.text = param1;
            return;
        }// end function

        public function setCopy(param1:String) : void
        {
            this.Copy = param1;
            return;
        }// end function

    }
}
