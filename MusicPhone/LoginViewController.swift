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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func initAwesomeTextIcons() {
        addIconToTextbox(FAKFontAwesome.userIconWithSize(20), text: usernameText)
        addIconToTextbox(FAKFontAwesome.lockIconWithSize(20), text: passwordText)
    }

    @IBAction func loginButtonPressed(sender: UIButton) {
        
    }

    func addIconToTextbox(icon: FAKFontAwesome!, text:UITextField, iconIsActive:Bool = false) {
        var leftLabel = UILabel(frame: CGRect(x: 1, y: 1, width: 60, height: 25))
        var color = iconIsActive ? UIColor.darkGrayColor() : UIColor.lightGrayColor()

        icon.addAttribute(NSForegroundColorAttributeName, value: color)

        var img = icon.imageWithSize(CGSize(width: 32, height: 32))
        var imgView = UIImageView(image: img)

        text.leftView = imgView
        text.leftViewMode = UITextFieldViewMode.Always
    }

    @IBAction func editUsername(sender: UITextField) {
        addIconToTextbox(FAKFontAwesome.userIconWithSize(20), text: usernameText, iconIsActive: true)
        addIconToTextbox(FAKFontAwesome.lockIconWithSize(20), text: passwordText)
    }

    @IBAction func editPasword(sender: UITextField) {
        addIconToTextbox(FAKFontAwesome.userIconWithSize(20), text: usernameText)
        addIconToTextbox(FAKFontAwesome.lockIconWithSize(20), text: passwordText, iconIsActive: true)
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
