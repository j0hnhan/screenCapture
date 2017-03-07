//
//  AppDelegate.swift
//  screenCapture
//
//  Created by John Han on 2/14/17.
//  Copyright © 2017 John Han. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    
    var item: NSStatusItem? = nil
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        item = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
        
        item?.image = NSImage(named: "cameraIcon")
        item?.action = #selector(AppDelegate.testFuc)
        
        let menu = NSMenu()
        menu.addItem(NSMenuItem(title: "SnapAndSave", action: #selector(AppDelegate.snapWindowMode), keyEquivalent: ""))
        menu.addItem(NSMenuItem(title: "SnapToClipBoard", action: #selector(AppDelegate.snapSelectionMode), keyEquivalent: ""))
        menu.addItem(NSMenuItem(title: "Preference", action: #selector(AppDelegate.openPreference), keyEquivalent: ""))
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(AppDelegate.quit), keyEquivalent: "q"))
        
        item?.menu = menu
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func testFuc() {
        print("Test func")
    }
    
    func snapWindowMode() {
        let task = Process()
        let pipe = Pipe()
        
        let date = NSDate();
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMddhhmmss"
        let dateString = dateFormatter.string(from: date as Date)
        
        task.launchPath = "/usr/sbin/screencapture"
        task.arguments = ["-w","/Users/johnhan/Desktop/\(dateString).jpg"]
        
        task.standardOutput = pipe
        task.launch()
        
        let handle = pipe.fileHandleForReading
        let data = handle.readDataToEndOfFile()
        let result_s = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
        print(result_s!)
    }
    
    func snapSelectionMode() {
        let task = Process()
        let pipe = Pipe()
    
        task.launchPath = "/usr/sbin/screencapture"
        task.arguments = ["-s","-c"]
        
        task.standardOutput = pipe
        task.launch()
        
        let handle = pipe.fileHandleForReading
        let data = handle.readDataToEndOfFile()
        let result_s = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
        print(result_s!)
    }
    
    let newWindow = NSWindow(contentRect: NSMakeRect(0, 0, NSScreen.main()!.frame.width/3, NSScreen.main()!.frame.height/3), styleMask: NSWindowStyleMask.titled, backing: NSBackingStoreType.buffered, defer: false)
    func createNewWindow(){
        newWindow.styleMask.insert(NSWindowStyleMask.closable)
        newWindow.styleMask.insert(NSWindowStyleMask.miniaturizable)
        
        newWindow.title = "Preference"
        newWindow.isOpaque = false
        newWindow.center()
        newWindow.isMovableByWindowBackground = true
        newWindow.backgroundColor = NSColor(calibratedHue: 0, saturation: 1.0, brightness: 0, alpha: 0.7)
        newWindow.makeKeyAndOrderFront(nil)
    }
    
    func setupWindow(){
        let frame = NSMakeRect(0, 0, NSScreen.main()!.frame.width/3, NSScreen.main()!.frame.height/3)
        
        let view: preferenceView = preferenceView(frame: frame)
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor.white.cgColor
        newWindow.contentView?.addSubview(view)
        
        
    }
    
    func openPreference() {
        createNewWindow()
        setupWindow()
    }
    
    func quit() {
        NSApplication.shared().terminate(self)
    }


}

