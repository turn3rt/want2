//
//  CreateAccountVC.swift
//  Want2
//
//  Created by Turner Thornberry on 2/16/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit
import Firebase



class CreateAccountVC: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var phoneNumField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneNumField.delegate = self // sets delegate to CreateAccountVC
       //let verificationID = UserDefaults.standard.string(forKey: "authVerificationID") //restores verification ID when app launches. need this and SMS code for sign in.

        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    
    
    
    @IBAction func createAccountClick(_ sender: UIButtonX) {
        print("created account")
        let phoneNum = self.phoneNumField.text
        
        PhoneAuthProvider.provider().verifyPhoneNumber(phoneNum!, uiDelegate: nil) { (verificationID, error) in
            if let error = error {
                print(error.localizedDescription)
                //self.showMessagePrompt(error.localizedDescription) //need to handle error messages look back and wanto for this
                return
            }
            
            UserDefaults.standard.set(verificationID, forKey: "authVerificationID") //saves silent verification ID to phone. need this and SMS verification ID to sign in
            
            
            
            
            // Sign in using the verificationID and the code sent to the user
            // ...
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
