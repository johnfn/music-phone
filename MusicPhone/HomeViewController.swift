//
//  HomeViewController.swift
//  MusicPhone
//
//  Created by Michael Kim on 3/8/15.
//  Copyright (c) 2015 Grant Mathews. All rights reserved.
//

import UIKit
import Parse

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        println(PFUser.currentUser())
        
        // Do any additional setup after loading the view.
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
