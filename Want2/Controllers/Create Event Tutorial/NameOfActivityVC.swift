//
//  NameOfActivityController.swift
//  Want2
//
//  Created by Turner Thornberry on 3/15/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

class NameOfActivityVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)

    }
    
    //func executes after user presses return button on keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.text != nil {
            performSegue(withIdentifier: "tutStep1", sender: Any?.self)
            textField.resignFirstResponder()
        }
        return true
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if self.view.frame.origin.y == 0{
            self.view.frame.origin.y -= 216
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0{
            self.view.frame.origin.y += 216
        }
    }

    @IBAction func tapOffKeyboard(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tutStep1" {
            let dest = segue.destination as! AddContactsVC
            dest.title = textField.text
            dest.newActivity.name = textField.text!
            
            
        }
    }

}
