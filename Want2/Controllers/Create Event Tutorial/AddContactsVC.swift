//
//  AddContactsVC.swift
//  Want2
//
//  Created by Turner Thornberry on 3/15/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

class AddContactsVC: UIViewController {
    
    
    //MARK: - IBActions
    @IBAction func menuButtonClick(_ sender: UIButtonX) {
        //TODO: add contacts picker VC
    }
    
    
    var newActivity = Activity(id: String(),
                               name: String(),
                               isActive: Bool(),
                               privacySetting: String(),
                               locationString: String(),
                               locLat: Double(),
                               locLong: Double())
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
