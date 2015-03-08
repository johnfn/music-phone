//
//  LoginViewController.swift
//  MusicPhone
//
//  Created by Michael Kim on 3/8/15.
//  Copyright (c) 2015 Grant Mathews. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        initAwesomeTextIcons();

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func initAwesomeTextIcons() {
        var leftLabel = UILabel(frame: CGRect(x: 1, y: 1, width: 60, height: 25))

        leftLabel.text = "Wow!"
        leftLabel.font = UIFont(name: "verdana", size: 15)
        leftLabel.textColor = UIColor.grayColor()
        leftLabel.textAlignment = NSTextAlignment.Right

        usernameText.leftView = leftLabel
        usernameText.leftViewMode = UITextFieldViewMode.Always
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
