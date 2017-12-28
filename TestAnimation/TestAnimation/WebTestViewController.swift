//
//  WebTestViewController.swift
//  TestAnimation
//
//  Created by 柳玉豹 on 2017/8/28.
//  Copyright © 2017年 xinghaiwulian. All rights reserved.
//

import UIKit

class WebTestViewController: UIViewController,UIWebViewDelegate {
    @IBOutlet weak var testWebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        testWebView.delegate = self
        testWebView.backgroundColor = UIColor.clear
        
        let tempUrl = URL(string: "https://www.apple.com/")
        let urlRequest = NSURLRequest(url: tempUrl!)
        testWebView.loadRequest(urlRequest as URLRequest)
        
        // Do any additional setup after loading the view.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
