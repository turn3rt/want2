//
//  EventDetailVC.swift
//  Want2
//
//  Created by Turner Thornberry on 2/16/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

class EventDetailVC: UIViewController {

   // let menu = MainTabViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonClick(_ sender: UIButtonX) {
        self.dismiss(animated: true, completion: nil)
        //self.navigationController?.popViewController(animated: true)
       // self.navigationController?.isNavigationBarHidden = true
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
