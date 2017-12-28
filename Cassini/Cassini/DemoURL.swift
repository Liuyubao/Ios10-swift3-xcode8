//
//  DemoURL.swift
//  Cassini
//
//  Created by 柳玉豹 on 2017/8/8.
//  Copyright © 2017年 liuyubao. All rights reserved.
//

import Foundation

struct DemoURL{
    static let stanford = URL(string: "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1858213625,2514833785&fm=26&gp=0.jpg")
    
    static var NASA: Dictionary<String, URL> = {
        let NASAURLStrings = [
            "Cassini" : "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3279969696,1515698592&fm=26&gp=0.jpg",
            "Earth" : "http://seopic.699pic.com/photo/50035/1234.jpg_wh1200.jpg",
            "Saturn" : "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1502782769&di=15db414b14110c4af1069b277351ca7a&imgtype=jpg&er=1&src=http%3A%2F%2Fimg-ak.pog.com%2Fcloud%2Fy8-thumbs%2F5877%2Fvideo_thumbnail.jpg%3F1466530033"
        ]
        var urls = Dictionary<String, URL>()
        for (key , value ) in NASAURLStrings {
            urls[key] = URL(string: value)
        }
        return urls
    }()
}
