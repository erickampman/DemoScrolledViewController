//
//  MainWindowController.swift
//  ScrollTest3
//
//  Created by Eric Kampman on 5/5/17.
//  Copyright © 2017 Eric Kampman. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

	override var windowNibName: String? {
		return "MainWindowController"
	}
	

	override func windowDidLoad() {
		super.windowDidLoad()
		
		contentViewController = MainViewController()
	}
	
}
