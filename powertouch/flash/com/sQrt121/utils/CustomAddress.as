package com.sQrt121.utils 
{	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	/**
	 * ...
	 * @author sQrt121
	 */
	public class CustomAddress
	{
		// PUBLIC CONSTANTS
		public static const ADRSEVENT:String	= "AdrsChanged";
		
		// PRIVATE CONSTANTS		
		
		
		// PUBLIC VARS
		public static var aCurrentAdrs:Array;
		public static var aPreviousAdrs:Array;
		public static var edDispatcher:EventDispatcher;
		
		// PRIVATE VARS	
		private static var initialize:Boolean	= init();
		
		
		
		public function CustomAddress() 
		{
			
		}
		
		public static function init():Boolean
		{			
			aPreviousAdrs	= [""];
			edDispatcher	= new EventDispatcher();
			SWFAddress.addEventListener(SWFAddressEvent.CHANGE, parseAdrs);
			
			return true;
		}		
		private static function parseAdrs(e:SWFAddressEvent):void
		{		
			if (e.pathNames[0] == undefined)
				e.pathNames[0]	= "";			
			
		
			aCurrentAdrs		= [];			
			for (var i:uint = 0; i < e.pathNames.length; i++)
			{
				aCurrentAdrs[i]	=  "/" + e.pathNames[i];
			}
			/*
			aCurrentAdrs[0]	= "/" + e.pathNames[0];
			for (var i:uint = 1; i < e.pathNames.length; i++)
			{
				aCurrentAdrs[i]	=  aCurrentAdrs[i - 1] + "/" + e.pathNames[i];
			}
				*/
			
			dispatchEvents();			
		}
		private static function dispatchEvents():void
		{
			var i:uint;
			var _a:Array	= aCurrentAdrs.slice(0,aCurrentAdrs.length);
			

			if (aCurrentAdrs.length < aPreviousAdrs.length)
			{
				for (i = aCurrentAdrs.length; i < aPreviousAdrs.length; i++)
				{
					aCurrentAdrs[i]	= "";
				}
			}

			for (i = 0; i < aCurrentAdrs.length; i++)
			{				
				if (aCurrentAdrs[i] != aPreviousAdrs[i])
				{					
					edDispatcher.dispatchEvent(new Event (ADRSEVENT + i));
				}				
			}			
			aPreviousAdrs	= _a;
		}

		
		
		
		
		
		
		
		
		
		public static function doNothing():void
		{
			
		}
	}
	
}