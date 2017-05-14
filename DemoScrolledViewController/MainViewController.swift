//
//  MainViewController.swift
//  ScrollSplitView
//
//  Created by Eric Kampman on 5/7/17.
//  Copyright © 2017 Eric Kampman. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {

	override var nibName: String? {
		return "MainViewController"
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
//		scrollView.translatesAutoresizingMaskIntoConstraints = true
//		scrollView.autoresizingMask = [.viewHeightSizable, .viewWidthSizable]
		
		contentViewController = ColorsSplitViewController(nibName: "ColorsSplitViewController", bundle: nil)
		
		let contentView  = contentViewController.view
		scrollView.documentView = contentView

		contentView.translatesAutoresizingMaskIntoConstraints = false
		contentView.identifier = "ContentView"

		let views: [String:NSView] = ["scrollView" : scrollView,
		                              "contentView" : contentView]
		
		let cH1 = NSLayoutConstraint.constraints(withVisualFormat: "H:|[contentView(>=640)]|", options: [], metrics: nil, views: views)
		let cV1 = NSLayoutConstraint.constraints(withVisualFormat: "V:|[contentView(>=800)]", options: [], metrics: nil, views: views)
		
		scrollView.contentView.addConstraints(cH1)
		scrollView.contentView.addConstraints(cV1)
		
	}
 
	@IBOutlet weak var scrollView: NSScrollView!
	
	var contentViewController: ColorsSplitViewController!
}
