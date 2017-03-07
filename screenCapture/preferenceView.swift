//
//  preferenceView.swift
//  screenCapture
//
//  Created by John Han on 2/16/17.
//  Copyright © 2017 John Han. All rights reserved.
//

import Foundation
import Cocoa

class preferenceView: NSView {
    override init(frame: NSRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    let modeOptionLabel:NSTextField = {
        let tf = NSTextField(string: "Mode Option")
        tf.backgroundColor = NSColor.white
        tf.isBordered = false
        tf.isSelectable = false
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
        
    }()
    let saveOptionLabel:NSTextField = {
        let tf = NSTextField(string: "Save option")
        tf.backgroundColor = NSColor.white
        tf.isBordered = false
        tf.isSelectable = false
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
        
    }()
    let saveLocationLabel:NSTextField = {
        let tf = NSTextField(string: "Save Location")
        tf.backgroundColor = NSColor.white
        tf.isBordered = false
        tf.isSelectable = false
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
        
    }()
    
    let windowModeBtn: NSButton = {
        let btn = NSButton()
        btn.title = "Window Mode"
        btn.layer?.backgroundColor = NSColor.white.cgColor
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let selectionModeBtn: NSButton = {
        let btn = NSButton()
        btn.title = "Selection Mode"
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let saveAsFile: NSButton = {
        let btn = NSButton()
        btn.title = "Save as File"
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let saveToClipboard: NSButton = {
        let btn = NSButton()
        btn.title = "Save to clipboard"
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let filePathText: NSTextField = {
        let tf = NSTextField(string: "")
        tf.backgroundColor = NSColor.white
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let filePathSelectionBtn: NSButton = {
        let btn = NSButton()
        btn.title = "Open"
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    
    func setupViews() {
        
        let views = ["modeOptionLabel":modeOptionLabel,"windowModeBtn":windowModeBtn,"selectionModeBtn":selectionModeBtn,"saveOptionLabel":saveOptionLabel,"saveAsFile":saveAsFile,"saveToClipboard":saveToClipboard,"saveLocationLabel":saveLocationLabel,"filePathText":filePathText,"filePathSelectionBtn":filePathSelectionBtn]
        
        addSubview(modeOptionLabel)
        addSubview(windowModeBtn)
        addSubview(selectionModeBtn)
        addSubview(saveOptionLabel)
        addSubview(saveAsFile)
        addSubview(saveToClipboard)
        addSubview(saveLocationLabel)
        addSubview(filePathText)
        addSubview(filePathSelectionBtn)


//        let cn1 = NSLayoutConstraint(item: modeOptionLabel,
//                                        attribute: .width,
//                                        relatedBy: .equal,
//                                        toItem: nil,
//                                        attribute: .notAnAttribute, 
//                                        multiplier: 1, 
//                                        constant: 100)
//        let cn2 = NSLayoutConstraint(item: modeOptionLabel,
//                                        attribute: .height,
//                                        relatedBy: .equal,
//                                        toItem: nil,
//                                        attribute: .notAnAttribute,
//                                        multiplier: 1,
//                                        constant: 250)
        
        let cn1 = NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[modeOptionLabel(25)]", options: .alignAllTop, metrics: nil, views: views)
        let cn2 = NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[modeOptionLabel]", options: .alignAllTop, metrics: nil, views: views)
        let cn3 = NSLayoutConstraint.constraints(withVisualFormat: "V:|-45-[windowModeBtn(25)]", options: .alignAllTop, metrics: nil, views: views)
        let cn4 = NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[windowModeBtn]", options: .alignAllTop, metrics: nil, views: views)
        let cn5 = NSLayoutConstraint.constraints(withVisualFormat: "V:|-45-[selectionModeBtn(25)]", options: .alignAllTop, metrics: nil, views: views)
        let cn6 = NSLayoutConstraint.constraints(withVisualFormat: "H:|-120-[selectionModeBtn]", options: .alignAllTop, metrics: nil, views: views)
        let cn7 = NSLayoutConstraint.constraints(withVisualFormat: "V:|-80-[saveOptionLabel(25)]", options: .alignAllTop, metrics: nil, views: views)
        let cn8 = NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[saveOptionLabel]", options: .alignAllTop, metrics: nil, views: views)
        let cn9 = NSLayoutConstraint.constraints(withVisualFormat: "V:|-115-[saveAsFile(25)]", options: .alignAllTop, metrics: nil, views: views)
        let cn10 = NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[saveAsFile]", options: .alignAllTop, metrics: nil, views: views)
        let cn11 = NSLayoutConstraint.constraints(withVisualFormat: "V:|-115-[saveToClipboard(25)]", options: .alignAllTop, metrics: nil, views: views)
        let cn12 = NSLayoutConstraint.constraints(withVisualFormat: "H:|-120-[saveToClipboard]", options: .alignAllTop, metrics: nil, views: views)
        let cn13 = NSLayoutConstraint.constraints(withVisualFormat: "V:|-150-[saveLocationLabel(25)]", options: .alignAllTop, metrics: nil, views: views)
        let cn14 = NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[saveLocationLabel]", options: .alignAllTop, metrics: nil, views: views)
        let cn15 = NSLayoutConstraint.constraints(withVisualFormat: "V:|-185-[filePathText(25)]", options: .alignAllTop, metrics: nil, views: views)
        let cn16 = NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[filePathText(200)]", options: .alignAllTop, metrics: nil, views: views)
        let cn17 = NSLayoutConstraint.constraints(withVisualFormat: "V:|-185-[filePathSelectionBtn(25)]", options: .alignAllTop, metrics: nil, views: views)
        let cn18 = NSLayoutConstraint.constraints(withVisualFormat: "H:|-230-[filePathSelectionBtn]", options: .alignAllTop, metrics: nil, views: views)
        
        addConstraints(cn1)
        addConstraints(cn2)
        addConstraints(cn3)
        addConstraints(cn4)
        addConstraints(cn5)
        addConstraints(cn6)
        addConstraints(cn7)
        addConstraints(cn8)
        addConstraints(cn9)
        addConstraints(cn10)
        addConstraints(cn11)
        addConstraints(cn12)
        addConstraints(cn13)
        addConstraints(cn14)
        addConstraints(cn15)
        addConstraints(cn16)
        addConstraints(cn17)
        addConstraints(cn18)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
