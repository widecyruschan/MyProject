﻿package cn.com.vfocus.main
{
    import com.greensock.*;
    import com.greensock.easing.*;
    import flash.events.*;
    import flash.net.*;
    import flash.utils.*;
    import org.papervision3d.events.*;
    import org.papervision3d.materials.*;
    import org.papervision3d.materials.utils.*;
    import org.papervision3d.objects.primitives.*;
    import org.papervision3d.view.*;

    public class pv3dCube1 extends BasicView
    {
        private var thispo:int = 0;
        private var cube:Cube;
        private var mouseDownX:Number = 0;
        private var targetRotation:Number = 0;
        private var picUrlA:Array;
        private var outUrlA:Array;
        private var titleA:Array;
        private var copyA:Array;
        private var loader:URLLoader;
        private var url:URLRequest;
        private var myxml:XML;
        private var frontAsset:BitmapFileMaterial;
        private var backAsset:BitmapFileMaterial;
        private var leftAsset:BitmapFileMaterial;
        private var rightAsset:BitmapFileMaterial;
        private var totalpage:int = 0;
        private var mhJiange:Number = 10;
        private var mhXunhuan:int = 99;
        private var mhRanTimer:Timer;

        public function pv3dCube1()
        {
            this.picUrlA = new Array();
            this.outUrlA = new Array();
            this.titleA = new Array();
            this.copyA = new Array();
            this.loader = new URLLoader();
            this.url = new URLRequest("xml/flashpic.php");
            this.mhRanTimer = new Timer(this.mhJiange * 1000, this.mhXunhuan);
            super(0, 0);
            camera.focus = 100;
            camera.zoom = 10;
            addEventListener(MouseEvent.MOUSE_DOWN, this.mouseDownHandler);
            addEventListener(MouseEvent.MOUSE_UP, this.mouseUpHandler);
            buttonMode = true;
            this.loader.addEventListener(Event.COMPLETE, this.loaded);
            this.loader.load(this.url);
            this.mhRanTimer.addEventListener(TimerEvent.TIMER, this.runTimer);
            this.mhRanTimer.start();
            return;
        }// end function

        private function runTimer(event:Event) : void
        {
            this.mhRanTimer.reset();
            this.mhRanTimer.start();
            if (this.thispo < 3)
            {
                var _loc_3:* = this.thispo + 1;
                this.thispo = _loc_3;
            }
            else
            {
                this.thispo = 0;
            }
            this.targetRotation = (-this.thispo) * 90;
            TweenMax.to(this.cube, 0.8, {rotationX:this.targetRotation, z:220, bezierThrough:[{z:500}], ease:Quad.easeOut});
            this.dispatchEvent(new Event("changebigpic", true));
            return;
        }// end function

        private function loaded(event:Event) : void
        {
            this.myxml = new XML(event.target.data);
            this.totalpage = this.myxml.data.length();
            var i:int = 0;
            while (i < this.totalpage)
            {
                
                this.picUrlA[i] = this.myxml.data[i].@picUrl;
                this.outUrlA[i] = this.myxml.data[i].@url;
                i++;
            }
            this.frontAsset = new BitmapFileMaterial(this.myxml.data[2].@picUrl);
            this.backAsset = new BitmapFileMaterial(this.myxml.data[0].@picUrl);
            this.leftAsset = new BitmapFileMaterial(this.myxml.data[1].@picUrl);
            this.rightAsset = new BitmapFileMaterial(this.myxml.data[3].@picUrl);
            this.frontAsset.addEventListener(FileLoadEvent.LOAD_COMPLETE, this.loadComplete);
            this.rightAsset.addEventListener(FileLoadEvent.LOAD_COMPLETE, this.loadComplete);
            var logimg = new MaterialsList();
            logimg.addMaterial(this.frontAsset, "front");
            logimg.addMaterial(this.backAsset, "back");
            logimg.addMaterial(this.leftAsset, "left");
            logimg.addMaterial(this.rightAsset, "right");
            logimg.addMaterial(this.leftAsset, "top");
            logimg.addMaterial(this.rightAsset, "bottom");
            this.cube = new Cube(logimg, 734, 440, 440);
            this.cube.z = 220;
            scene.addChild(this.cube);
            startRendering();
            return;
        }// end function

        private function loadComplete(event:FileLoadEvent) : void
        {
            var targets:* = BitmapFileMaterial(event.target);
            BitmapMaterialTools.mirrorBitmapY(targets.bitmap);
            BitmapMaterialTools.mirrorBitmapX(targets.bitmap);
            return;
        }// end function

        private function loadComplete2(event:FileLoadEvent) : void
        {
            var targets:* = BitmapFileMaterial(event.target);
            BitmapMaterialTools.mirrorBitmapY(targets.bitmap);
            return;
        }// end function

        private function mouseDownHandler(event:MouseEvent) : void
        {
            this.mhRanTimer.reset();
            this.mhRanTimer.stop();
            return;
        }// end function

        private function mouseUpHandler(event:MouseEvent) : void
        {
            this.mhRanTimer.start();
            var _loc_2:* = this.outUrlA[this.thispo];
            trace(_loc_2);
            navigateToURL(new URLRequest(_loc_2), "_blank");
            return;
        }// end function

        public function turnCube(param1:int) : void
        {
            var _loc_2:int = 0;
            this.mhRanTimer.reset();
            this.mhRanTimer.start();
            _loc_2 = (-param1) * 90;
            this.thispo = param1;
            TweenMax.to(this.cube, 0.8, {rotationX:_loc_2, z:220, bezierThrough:[{z:500}], ease:Quad.easeOut});
            return;
        }// end function

        public function getpointNow() : int
        {
            return this.thispo;
        }// end function

    }
}
