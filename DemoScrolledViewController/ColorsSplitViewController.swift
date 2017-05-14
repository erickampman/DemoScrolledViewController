//
//  ColorsSplitViewController.swift
//  DemoScrolledViewController
//
//  Created by Eric Kampman on 5/14/17.
//  Copyright © 2017 Eric Kampman. All rights reserved.
//

import Cocoa

class ColorsSplitViewController: NSSplitViewController {

	override var acceptsFirstResponder: Bool {
		return true
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()

		self.splitView.isVertical = false
				
		// Do view setup here.
		_addSplitView()
		_addSplitView()
}

	func _addSplitView() {
		let colorViewController = ColorViewController()
		addChildViewController(colorViewController)
		view.needsDisplay = true
	}
	
	@IBAction func addSplitView(_ sender: Any?) {
		_addSplitView()
	}

}
