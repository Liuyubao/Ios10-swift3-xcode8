//
//  ViewController.swift
//  TestAnimation
//
//  Created by 柳玉豹 on 2017/8/11.
//  Copyright © 2017年 xinghaiwulian. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    
    @IBOutlet weak var aView: AView!
    
    @IBOutlet weak var bView: BView!
    
    @IBAction func b1Button(_ sender: UIButton) {
//        playAnimation()
//        print(Alamofire.request("http://192.168.2.101:9002/test/getDoorId"))
        
//        // 1、创建URL对象；
//        let url:URL! = URL(string:"http://api.3g.ifeng.com/clientShortNews?type=beauty");
//        
//        // 2、创建Request对象
//        // url: 请求路径
//        // cachePolicy: 缓存协议
//        // timeoutInterval: 网络请求超时时间(单位：秒)
//        let urlRequest:URLRequest = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
//        
//        // 3、连接服务器
//        let connection:NSURLConnection? = NSURLConnection(request: urlRequest, delegate: self)
//        connection?.schedule(in: .current, forMode: .defaultRunLoopMode)
//        connection?.start()
//        print(connection?.description)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        print("test########\n")
    }

    
    
    
    
    func playAnimation(){
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationCurve(.easeOut)
        UIView.setAnimationDuration(5)
        UIView.setAnimationBeginsFromCurrentState(true)
        
        let view = self.view.viewWithTag(1)
        var testTransform = view?.transform
        testTransform = testTransform?.scaledBy(x: CGFloat(0.9), y: CGFloat(0.9))
//        testTransform = testTransform?.rotated(by: 3.14/4)
        view?.transform = testTransform!
//        view?.frame = CGRect(x: 40, y: 40, width: 20, height: 20)
//        view?.backgroundColor = UIColor.blue
//        view?.alpha = 0.5
        
        UIView.setAnimationDelegate(self)
        UIView.setAnimationDidStop(#selector(ViewController.animationStop))
        UIView.commitAnimations()
    }
    
    func animationStop(){
        print("Animation stop.")
//        self.view.viewWithTag(1)?.removeFromSuperview()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

