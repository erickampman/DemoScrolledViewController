//
//  ColorView.swift
//  ScrollSplitView
//
//  Created by Eric Kampman on 5/7/17.
//  Copyright © 2017 Eric Kampman. All rights reserved.
//

import Cocoa

class ColorView: NSView {

	override var acceptsFirstResponder: Bool {
		return true
	}
	
	override func draw(_ dirtyRect: NSRect) {
		super.draw(dirtyRect)
		
		let path1 = NSBezierPath(rect: bounds)
		color1.set()
		path1.fill()
		
		let sz = bounds.size
		let r = NSRect(x: bounds.origin.x, y: bounds.origin.y, width: sz.width, height: sz.height/2)
		color2.set()
		
		let path2 = NSBezierPath(rect: r)
		
		path2.fill()
	}
	
	var color1 = NSColor.green
	var color2 = NSColor.blue
}
