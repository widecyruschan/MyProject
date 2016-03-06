package cn.com.vfocus.pictures
{
    import flash.display.*;
    import flash.geom.*;

    public class Reflection extends Sprite
    {
        private var _img:Bitmap;
        private var _distance:Number;
        private var _offset:Number;
        private var _reflectionImgData:BitmapData;
        private var _reflectionImg:Bitmap;
        private var _reflectionContainer:Sprite;
        private var _reflectionLight:Sprite;

        public function Reflection(param1:Bitmap, param2:Number, param3:Number = 100)
        {
            this._img = param1;
            this._distance = param2;
            this._offset = param3;
            addChild(this._img);
            this.initReflection();
            return;
        }// end function

        private function initReflection()
        {
            var _loc_1:* = this._img.bitmapData;
            this._reflectionImgData = _loc_1.clone();
            this._reflectionImg = new Bitmap(this._reflectionImgData);
            this._reflectionContainer = new Sprite();
            this._reflectionImg.scaleY = this._reflectionImg.scaleY * -1;
            this._reflectionImg.y = this._img.y + this._img.height * 2 + this._distance;
            this._reflectionContainer.addChild(this._reflectionImg);
            this._reflectionContainer.blendMode = BlendMode.LAYER;
            this._reflectionLight = new Sprite();
            var _loc_2:* = GradientType.LINEAR;
            var _loc_3:Array = [0, 16777215];
            var _loc_4:Array = [1, 0];
            var _loc_5:Array = [0, 255];
            var _loc_6:* = new Matrix();
            new Matrix().createGradientBox(this._img.width, this._img.height, Math.PI / 2, 0, this._offset + this._distance);
            var _loc_7:* = SpreadMethod.PAD;
            this._reflectionLight.graphics.beginGradientFill(_loc_2, _loc_3, _loc_4, _loc_5, _loc_6, _loc_7);
            this._reflectionLight.graphics.drawRect(0, this._img.y + this._img.height + this._distance, this._img.width, this._img.height);
            this._reflectionLight.graphics.endFill();
            this._reflectionLight.blendMode = BlendMode.ALPHA;
            this._reflectionContainer.addChild(this._reflectionLight);
            this.addChild(this._reflectionContainer);
            return;
        }// end function

    }
}
