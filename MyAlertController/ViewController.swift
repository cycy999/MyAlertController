//
//  ViewController.swift
//  MyAlertController
//
//  Created by 陈岩 on 2018/3/24.
//  Copyright © 2018年 陈岩. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var level = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "第\(level)层"
        view.backgroundColor = UIColor.cyan
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 150, height: 40))
        button.center = CGPoint(x: UIScreen.main.bounds.size.width / 2, y: UIScreen.main.bounds.size.height / 2 - 40)
        button.backgroundColor = UIColor.white
        button.setTitle("点击下一层", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        view.addSubview(button)
        
        
        let button_2 = UIButton(frame: CGRect(x: 0, y: 0, width: 150, height: 40))
        button_2.center = CGPoint(x: UIScreen.main.bounds.size.width / 2, y: UIScreen.main.bounds.size.height / 2 + 60)
        button_2.backgroundColor = UIColor.white
        button_2.setTitle("弹出alert", for: .normal)
        button_2.setTitleColor(UIColor.black, for: .normal)
        button_2.addTarget(self, action: #selector(clickAlert), for: .touchUpInside)
        view.addSubview(button_2)
    }

    @objc func clickButton() {
        let vc = ViewController()
        vc.level = level + 1
        show(vc, sender: nil)
    }
    
    @objc func clickAlert() {
        let v = MyAlertView()
        v.showAlert()
        
        v.testBlock(title: "参考方法", handler: {
            let delay = DispatchTime.now() + .seconds(3)
            DispatchQueue.main.asyncAfter(deadline: delay, execute: {
                v.removeFromSuperview()
            })
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

