/*
	This project is © 2010-2011 Silex Labs and is released under the GPL License:
	This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License (GPL) as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version. 
	This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
	To read the license please visit http://www.gnu.org/copyleft/gpl.html
*/

package org.intermedia.view;

import js.Lib;
import js.Dom;
import org.intermedia.view.Constants;
import org.intermedia.view.ScreenResolution;

/**
 * This class defines the styles used by the detail view
 * 
 * @author Raphael Harmel
 */

class DetailStyle
{
	
	/**
	 * Defines default Style
	 * 
	 * @param	node
	 */
	public static function setDetailStyle(node:HtmlDom):Void
	{
		node.style.display = "inline-block";
		//node.style.position = "absolute";
		//node.style.position = "fixed";
		node.style.position = "static";
		
		node.style.marginLeft = "0px";
		node.style.marginRight = "0px";
		//node.style.marginTop = "0px";
		node.style.marginTop = Std.string(Constants.HEADER_HEIGHT) + "px";
		node.style.marginBottom = "0px";
		
		node.style.paddingLeft = Std.string(Constants.DETAIL_HORIZONTAL_PADDING_PERCENT) + "%";
		node.style.paddingRight = Std.string(Constants.DETAIL_HORIZONTAL_PADDING_PERCENT) + "%";
		node.style.paddingTop = "10px";
		node.style.paddingBottom = "10px";
		
		//node.style.width = "96%";
		node.style.width = Std.string(Constants.DETAIL_HORIZONTAL_PERCENT) + "%";
		//node.style.width = Std.string(Lib.window.innerWidth - 20) + "px";
		//node.style.height = Std.string(Lib.window.innerHeight) + "px";
		//node.style.height = "100px";
		//node.style.height = "100%";
		node.style.height = "auto";
		//node.style.height = Std.string(Lib.window.innerHeight - Constants.HEADER_HEIGHT) + "px";
		
		node.style.top = Std.string(Constants.HEADER_HEIGHT) + "px";
		node.style.bottom = "0px";
		
		node.style.overflowX = "hidden";
		node.style.overflowY = "hidden";
		//node.style.overflowY = "scroll";
		//node.style.overflowY = "visible";
		//node.style.overflowY = "auto";
		
		
		//node.style.backgroundColor = BackgroundColorStyleValue.colorValue(ColorValue.rgba(255, 255, 255, 1));
		
		
	}

	/**
	 * Defines thumblist Style
	 * 
	 * @param	node
	 */
	public static function setThumbnail(node:HtmlDom):Void
	{
		var IMAGE_MAX_HEIGHT:Int = 120;
		
		node.style.display = "block";
		
		node.style.marginLeft = "auto";
		node.style.marginRight = "auto";
		
		node.style.maxWidth = Std.string(Constants.DETAIL_HORIZONTAL_PERCENT) + "%";
		node.style.maxHeight = Std.string(IMAGE_MAX_HEIGHT) + "px";
	}
	
	/**
	 * Defines text Style
	 * 
	 * @param	node
	 */
	public static function setText(node:HtmlDom):Void
	{
		node.style.display = "block";
		node.style.color = '#202020';
		node.style.fontFamily = 'Arial, sans-serif';
	}

	/**
	 * Defines cell title Style
	 * 
	 * @param	node
	 */
	public static function setTitle(node:HtmlDom,?screenResolutionSize:ScreenResolutionSize):Void
	//public static function setTitle(node:HtmlDom):Void
	{
		setText(node);
		
		var fontSize:Int = 14;
		if (screenResolutionSize == ScreenResolutionSize.small) fontSize = 14;
		else if (screenResolutionSize == ScreenResolutionSize.normal) fontSize = 16;
		else  fontSize = 18;
		
		node.style.fontSize = Std.string(fontSize) + "px";
		node.style.fontWeight = "bold";
	}

	/**
	 * Defines cell comment Style
	 * 
	 * @param	node
	 */
	public static function setAuthor(node:HtmlDom,?screenResolutionSize:ScreenResolutionSize):Void
	//public static function setAuthor(node:HtmlDom):Void
	{
		setText(node);

		var fontSize:Int = 10;
		if (screenResolutionSize == ScreenResolutionSize.small) fontSize = 10;
		else if (screenResolutionSize == ScreenResolutionSize.normal) fontSize = 11;
		else  fontSize = 12;
		
		node.style.fontSize = Std.string(fontSize) + "px";
		node.style.fontWeight = "normal";
	}

	/**
	 * Defines cell description Style
	 * 
	 * @param	node
	 */
	public static function setDescription(node:HtmlDom):Void
	{
		setText(node);

		node.style.marginTop = Std.string(10) + "px";
		node.style.marginBottom = Std.string(10) + "px";
		
		node.style.fontSize = "14px";
		//node.style.fontWeight = "bold";
	}
	
}
