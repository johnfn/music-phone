//
//  RegistrationViewController.swift
//  MusicPhone
//
//  Created by Michael Kim on 3/8/15.
//  Copyright (c) 2015 Grant Mathews. All rights reserved.
//

import UIKit
import Parse

class RegistrationViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func registerButtonPressed(sender: UIButton) {
        let email = self.emailTextField.text!
        let username = self.usernameTextField.text!
        let password = self.passwordTextField.text!
        
        var pfUser = PFUser()
        pfUser.email = email
        pfUser.username = username
        pfUser.password = password
        
        pfUser.signUpInBackgroundWithBlock { (succeeded, error) -> Void in
            if error != nil { // was not able to sign up
                
            } else { // was able to sign up
                self.performSegueWithIdentifier("", sender: self)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
