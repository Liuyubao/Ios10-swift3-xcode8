//
//  CassiniViewController.swift
//  Cassini
//
//  Created by 柳玉豹 on 2017/8/4.
//  Copyright © 2017年 liuyubao. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let url =  DemoURL.NASA[segue.identifier ?? ""] {
            if let imageVC = (segue.destination.contents as? ImageViewController) {
                imageVC.imageURL = url
                imageVC.title = (sender as? UIButton)?.currentTitle
            }
        }
        
    }
    
    
}



extension UIViewController{
    //如果是navigationVC就返回它的visibleVC，否则返回自己
    var contents: UIViewController {
        if let navcon = self as? UINavigationController {
            return navcon.visibleViewController ?? self
        }else{
            return self
        }
    }
}
