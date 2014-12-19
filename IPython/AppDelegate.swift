//
//  AppDelegate.swift
//  IPython
//
//  Created by Samuel Vasko on 17/12/14.
//  Copyright (c) 2014 Samuel Vasko. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var shell: NSTask?
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        var shell = NSTask()
        
        shell.launchPath = "/usr/local/bin/ipython"
        shell.arguments = ["notebook", "--no-browser"]
        
        let pipe = NSPipe()
        shell.standardOutput = pipe

        pipe.fileHandleForReading.waitForDataInBackgroundAndNotify()
            
        let notificationCenter = NSNotificationCenter.defaultCenter()
        notificationCenter.addObserver(self, selector: "receivedData:", name: NSFileHandleDataAvailableNotification, object: nil)
        
        // You can also set a function to fire after the task terminates
        shell.terminationHandler = {task -> Void in
            // Handle the task ending here
        }
        
//        shell.launch()
        
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        println("closing")
    }
    
    
    // Take care of printing output of ipyton command
    func receivedData(notif : NSNotification) {
        let fh:NSFileHandle = notif.object as NSFileHandle
        let data = fh.availableData
        if data.length > 1 {
            fh.waitForDataInBackgroundAndNotify()
            let string = NSString(data: data, encoding: NSASCIIStringEncoding)
            println(string!)
        }
    }


}

