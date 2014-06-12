//
//  File.swift
//  anima
//
//  Created by Daniel Fliegauf,Christian and Chatss on 12/06/14.
//  Copyright (c) 2014 Daniel Fliegauf. All rights reserved.
//

import Foundation
import UIKit

class File : UIViewController {
    
    @IBOutlet var heartButton : UIButton
    
    override func viewDidLoad(){
        super.viewDidLoad()
        UIControlState.Normal
        self.heartButton.setImage(UIImage(named: "heart") as? UIImage, forState: UIControlState.Normal)
        self.heartButton.setTitle("", forState: UIControlState.Normal)
    }
    
    //pragma mark - Navigation
    
    @IBAction func buttonClicked(sender : AnyObject) {
        self.performSegueWithIdentifier("Project", sender: sender)
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if (segue.identifier == "Project") {
        let dest = segue!.destinationViewController as TableViewController
        dest.delegate = self
    }
    }
    

}