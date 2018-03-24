//
//  MyAlertView.swift
//  MyAlertController
//
//  Created by 陈岩 on 2018/3/24.
//  Copyright © 2018年 陈岩. All rights reserved.
//

import UIKit

class MyAlertView: UIView {

    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = UIColor(displayP3Red: 0, green: 0, blue: 0, alpha: 0.3)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 150, height: 40))
        button.center = CGPoint(x: UIScreen.main.bounds.size.width / 2, y: UIScreen.main.bounds.size.height / 2 - 100)
        button.backgroundColor = UIColor.cyan
        button.setTitle("dismiss", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        addSubview(button)
    }
    
    @objc func clickButton() {
        removeFromSuperview()
        
    }
    
    func showAlert() {
        if let rootWindow = UIApplication.shared.keyWindow {
            
            rootWindow.addSubview(self)
            
        } else {
            print("the UIApplication.shared.keyWindow is nil!")
        }
        
    }
    
    func testBlock(title: String, handler: @escaping() -> ()) {
        print(title)
        handler()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
