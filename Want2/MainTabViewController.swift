//
//  MainTabViewController.swift
//  Want2
//
//  Created by Turner Thornberry on 2/8/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

class MainTabViewController: UITabBarController {
    
    
    let centerButton = UIButton.init(type: .custom)
    let helper = Helper()
    
    var deviceModel = "unknown"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UIDevice().userInterfaceIdiom == .phone {
            switch UIScreen.main.nativeBounds.height {
            case 1136:
                deviceModel = "iPhone small"
                print("Device is iPhone 5 or 5S or 5C")
            case 1334:
                deviceModel = "iPhone"
                print("Device is iPhone 6/6S/7/8")
            case 2208:
                deviceModel = "iPhone plus"
                print("Device is iPhone 6+/6S+/7+/8+")
            case 2436:
                deviceModel = "iPhone X"
                print("Device is iPhone X")
            default:
                print("Device is unknown or apple released a new phone dimension or some shit and you need to fix the center button on the tab controller")
            }
        }

        
        //centerButton.setTitle("ass", for: .normal)
        centerButton.setImage(#imageLiteral(resourceName: "LogoTransparent_small.png"), for: .normal)
        
        centerButton.frame = CGRect(x: 100, y: 0, width: 44, height: 44)
        centerButton.backgroundColor = helper.primaryColor //UIColor.orange
        centerButton.layer.borderWidth = 3
        centerButton.layer.borderColor = helper.lightPrimaryColor.cgColor
        centerButton.addTarget(self, action: #selector(handleTouchTabbarCenter), for: .touchUpInside)

        self.view.insertSubview(centerButton, aboveSubview: self.tabBar)
        
    }
        
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        var heightForCenterButton = CGFloat()
        if deviceModel == "iPhone X"{
           heightForCenterButton = self.view.bounds.height - 128
        } else {
            heightForCenterButton = self.view.bounds.height - 80
        }
        
        centerButton.frame = CGRect.init(x: self.tabBar.center.x - 40, y: heightForCenterButton, width: 80, height: 80) //takes cgfloat
        centerButton.layer.cornerRadius = 40
    }
    
    
    //Finds center and assigns stuff to do when it's touched
    @objc func handleTouchTabbarCenter()
    {
        if let count = self.tabBar.items?.count
        {
            let i = floor(Double(count / 2))
            self.selectedViewController = self.viewControllers?[Int(i)]
        }
    }


}

