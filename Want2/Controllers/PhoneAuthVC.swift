//
//  PhoneAuthVC.swift
//  Want2
//
//  Created by Turner Thornberry on 2/16/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit
import Firebase

class PhoneAuthVC: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var codeField: UITextField!
    
    
    var verificationID = UserDefaults.standard.string(forKey: "authVerificationID")
     var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()

        
        self.codeField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func submitClick(_ sender: UIButtonX) {
        print("waiting for verific code")
        let verificationCode = self.codeField.text
        
        let credential = PhoneAuthProvider.provider().credential(
            withVerificationID: verificationID!,
            verificationCode: verificationCode!)
        
        Auth.auth().signIn(with: credential) { (user, error) in
            if let error = error {
                print("Failed due to error code: " + error.localizedDescription)
                return
            }
            // User is signed in
            print("Phone number is: \(user?.phoneNumber)")
            let userID: String = user!.uid //gets UNIQUE user id
            
            
//            self.ref.child("Users").child(userID).setValue(["Username": username!,
//                                                            "Name": name!,
//                                                            "Email":email!,
//                                                            "uid": userID ])
            
        }
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
