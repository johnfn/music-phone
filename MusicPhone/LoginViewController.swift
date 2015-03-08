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
    @IBOutlet weak var passwordText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        initAwesomeTextIcons()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func initAwesomeTextIcons() {
        addIconToTextbox(FAKFontAwesome.userIconWithSize(20), text: usernameText)
        addIconToTextbox(FAKFontAwesome.lockIconWithSize(20), text: passwordText)
    }

    func addIconToTextbox(icon: FAKFontAwesome!, text:UITextField) {
        var leftLabel = UILabel(frame: CGRect(x: 1, y: 1, width: 60, height: 25))

        icon.addAttribute(NSForegroundColorAttributeName, value: UIColor.lightGrayColor())

        var img = icon.imageWithSize(CGSize(width: 32, height: 32))
        var imgView = UIImageView(image: img)

        text.leftView = imgView
        text.leftViewMode = UITextFieldViewMode.Always
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
