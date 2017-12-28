//
//  TestViewController.swift
//  TestAnimation
//
//  Created by 柳玉豹 on 2017/8/21.
//  Copyright © 2017年 xinghaiwulian. All rights reserved.
//

import UIKit
import Alamofire

class TestViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.test1()
        //self.test2()
//        self.test0()
        
    }
}




//MARK: - 方式1 带参
extension TestViewController{
    
    //GET
    func test1(){
        //参数1：请求方式
        //参数2：请求路径
        //参数3：参数列表
        //参数4：编码方式(参数拼接方式)
        //参数5：需要设置的请求头的的信息
        Alamofire.request("http://192.168.2.101:9002/test/getDoorId").responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }

        
//        Alamofire.request(.GET, "http://192.168.2.101:9002/test/openDoor", parameters: nil, encoding: .URL, headers: nil).responseJSON { (data) in
//            
//            //接收到服务器返回的数据之后会调用这个闭包
//            
//            print(data)
//        }
    }
    
//    //POST
//    func test0(){
//        Alamofire.request(.POST, "http://0.0.0.0:tuicool@api.tuicool.com/api/signup/register_by_email.json", parameters: ["email":"101659109@qq.com","name":"鱼摆摆","password":"123456789"], encoding: .URL, headers: nil).responseJSON(options: .MutableContainers) { (data) in
//            print(data)
//        }
//    }
//}
//
////MARK: - 方式2 不带参
//extension ViewController{
//    func test2(){
//        //参数1：请求方式
//        //参数2：请求地址
//        Alamofire.request(.GET, "http://0.0.0.0:tuicool@api.tuicool.com/api/articles/hot.json").responseJSON(options: .MutableContainers) { (data) in
//            print(data)
//        }
//    }
//}
//
}
