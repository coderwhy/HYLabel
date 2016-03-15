//
//  ViewController.swift
//  HYLabelDemo-Swift
//
//  Created by apple on 16/3/9.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

import UIKit
import HYLabel

class ViewController: UIViewController {
    
    @IBOutlet weak var demoLabel: HYLabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    // 监听@谁谁谁的点击
    demoLabel.userTapHandler = { (label, user, range) in
        print(label)
        print(user)
        print(range)
    }
    
    // 监听链接的点击
    demoLabel.linkTapHandler = { (label, link, range) in
        print(label)
        print(link)
        print(range)
    }
    
    // 监听话题的点击
    demoLabel.topicTapHandler = { (label, topic, range) in
        print(label)
        print(topic)
        print(range)
    }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        demoLabel.text = "作者:@coderwhy 话题:#Label字符串识别# 网址:http://www.520it.com"
    }
}

