package cn.com.vfocus.pictures
{
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;

    public class picItemnigh extends MovieClip
    {
        public var p0:picItem;
        public var p1:picItem;
        public var p2:picItem;
        public var p3:picItem;
        public var p4:picItem;
        public var p5:picItem;
        public var p6:picItem;
        public var p7:picItem;
        public var p8:picItem;
        private var loadpicnum:int = -1;
        private var picMini:Number = 0;
        private var picMax:Number = 9;
        private var pointNow:Number = 0;
        private var totalpage:int = 0;
        private var picUrlA:Array;
        private var outUrlA:Array;
        private var titleA:Array;
        private var loader:URLLoader;
        private var url:URLRequest;
        private var myxml:XML;

        public function picItemnigh() : void
        {
            this.picUrlA = new Array();
            this.outUrlA = new Array();
            this.titleA = new Array();
            this.loader = new URLLoader();
            this.url = new URLRequest("xml/picnine.php");
            addFrameScript(0, this.frame1, 16, this.frame17);
            this.init();
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
            this.myxml = new XML(event.target.data);
            trace(this.myxml);
            var _loc_2:int = 0;
            while (_loc_2 < this.picMax)
            {
                
                this.picUrlA[_loc_2] = this.myxml.data[_loc_2].@picUrl;
                this.outUrlA[_loc_2] = this.myxml.data[_loc_2].@outUrl;
                this.titleA[_loc_2] = this.myxml.data[_loc_2].@title;
                _loc_3 = this["p" + _loc_2] as MovieClip;
                _loc_3.setId(_loc_2);
                _loc_3.setData(this.outUrlA[_loc_2]);
                _loc_3.setTitle(this.titleA[_loc_2]);
                _loc_3.loadpic(this.picUrlA[_loc_2]);
                _loc_2++;
            }
            return;
        }// end function

        function frame1()
        {
            stop();
            return;
        }// end function

        function frame17()
        {
            stop();
            return;
        }// end function

    }
}
