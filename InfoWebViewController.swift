//
//  InfoWebViewController.swift
//  PreMD
//
//  Created by Eric Love on 8/2/19.
//  Copyright © 2019 Eric Love. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class InfoWebViewController: UIViewController, WKUIDelegate, WKNavigationDelegate{
    
    
    
    @IBOutlet var webView: WKWebView!
    
    override func loadView(){
       let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        webView.navigationDelegate = self
        view = webView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL(string: infoLink)!
        webView.load(URLRequest(url: url))
        
        
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
        
    }
    
    
}
