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
    
    
    func setupViews() {
        
        addSubview(modeOptionLabel)
        let cn1 = NSLayoutConstraint(item: modeOptionLabel,
                                        attribute: .width,
                                        relatedBy: .equal,
                                        toItem: nil,
                                        attribute: .notAnAttribute, 
                                        multiplier: 1, 
                                        constant: 100)
        let cn2 = NSLayoutConstraint(item: modeOptionLabel,
                                        attribute: .height,
                                        relatedBy: .equal,
                                        toItem: nil,
                                        attribute: .notAnAttribute,
                                        multiplier: 1,
                                        constant: 250)
        
        modeOptionLabel.addConstraints([cn1,cn2])
        addSubview(windowModeBtn)
//        addSubview(selectionModeBtn)
//        addSubview(saveOptionLabel)
//        addSubview(saveAsFile)
//        addSubview(saveToClipboard)
//        addSubview(saveLocationLabel)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
