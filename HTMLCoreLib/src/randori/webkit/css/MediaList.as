
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/css/MediaList.idl

  PLEASE DO *NOT* MODIFY THIS FILE! This file will be overridden next generation. If you need changes:
  - Regenerate the project with the newest IDL files.
  - or modify the WebIDLParser tool itself.

********************************************************************************************************

  Copyright (C) 2013 Sebastian Loncar, Web: http://loncar.de
  Copyright (C) 2009 Apple Inc. All Rights Reserved.

  Adapted to create Actionscript 3 classes by Roland Zwaga (roland@stackandheap.com) for the Randori
  framework for large enterprise Javascript applications.

  MIT License:

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
  associated documentation files (the "Software"), to deal in the Software without restriction, 
  including without limitation the rights to use, copy, modify, merge, publish, distribute,
  sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial
  portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
  NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
  OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*******************************************************************************************************/


package randori.webkit.css
{


[JavaScript(export="false", name="MediaList")]
/**
 *  <p>
 *  The <code>MediaList</code> interface provides the abstraction of an
 *  ordered collection of media,
 *  without defining or constraining how this collection is implemented. An
 *  empty list is the same as a list that contains the medium
 *  <code>"all"</code>.
 *  </p><p>
 *  The items in the <code>MediaList</code> are accessible via an integral
 *  index, starting from 0.
 *  </p>
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 *  @see http://www.w3.org/TR/1998/REC-html40-19980424/types.html#h-6.13
 */
public dynamic class MediaList
{

	public function get mediaText():String { return ''; }
	public function set mediaText(value:String):void { }

	public function get length():uint { return 0; }
	/**
	*  @param oldMedium (optional argument, default value is <code>undefined</code>)
	*/
	public function deleteMedium(oldMedium:String=undefined):void {}
	/**
	*  @param newMedium (optional argument, default value is <code>undefined</code>)
	*/
	public function appendMedium(newMedium:String=undefined):void {}
}

}