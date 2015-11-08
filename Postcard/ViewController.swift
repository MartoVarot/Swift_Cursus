//
//  ViewController.swift
//  Postcard
//
//  Created by Ton Markus on 07-11-15.
//  Copyright © 2015 Kartomedia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextfield: UITextField!
    
    @IBOutlet weak var enterMessageTextfield: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // code will evaluate when the Send Mail button is pushed
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextfield.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextfield.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterMessageTextfield.text = ""
        enterMessageTextfield.resignFirstResponder()
        
        enterNameTextfield.text = ""
        enterNameTextfield.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
}

