//
//  Document.swift
//  IPython
//
//  Created by Samuel Vasko on 17/12/14.
//  Copyright (c) 2014 Samuel Vasko. All rights reserved.
//

import Cocoa
import WebKit

class Document: NSDocument {

    @IBOutlet var webView: WebView!
    
    override init() {
        super.init()
        // Add your subclass-specific initialization here.
    }

    override func windowControllerDidLoadNib(aController: NSWindowController) {
        super.windowControllerDidLoadNib(aController)
        let requesturl = NSURL(string: "http://localhost:8888/notebooks/Code/Python/Untitled1.ipynb")
        let request = NSURLRequest(URL: requesturl!)
        webView.mainFrame.loadRequest(request)
        // Add any code here that needs to be executed once the windowController has loaded the document's window.
    }

    override class func autosavesInPlace() -> Bool {
        return false
    }

    override var windowNibName: String? {
        return "Document"
    }

    override func dataOfType(typeName: String, error outError: NSErrorPointer) -> NSData? {
        //
//        outError.memory = NSError(domain: NSOSStatusErrorDomain, code: unimpErr, userInfo: nil)
        return nil
    }

    override func readFromData(data: NSData, ofType typeName: String, error outError: NSErrorPointer) -> Bool {
        // Insert code here to read your document from the given data of the specified type. If outError != nil, ensure that you create and set an appropriate error when returning false.
        // You can also choose to override readFromFileWrapper:ofType:error: or readFromURL:ofType:error: instead.
        // If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
//        outError.memory = NSError(domain: NSOSStatusErrorDomain, code: unimpErr, userInfo: nil)
        return true
    }


}

