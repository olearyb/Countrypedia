//
//  WebViewController.swift
//  Assignment1
//
//  Created by Barra on 19/02/2020.
//  Copyright © 2020 Barra. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKUIDelegate {
    
    // model data
    var urlString : String!
    
    // outlets

//    @IBOutlet weak var webView: WKWebView!
    @IBOutlet var webViewTwo: WKWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
        
               
        // load the web content 1) url 2) urlrequest 3) load url
        let url = URL(string: urlString)
        
       // let url = URL(dataRepresentation: url)
        
        let request = URLRequest(url: url!)
        
        webViewTwo.load(request as URLRequest)
    }
    

    override func loadView() {
          let webConfiguration = WKWebViewConfiguration()
          webViewTwo = WKWebView(frame: .zero, configuration: webConfiguration)
          webViewTwo.uiDelegate = self
          view = webViewTwo
      }
}


