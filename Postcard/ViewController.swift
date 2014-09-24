//
//  ViewController.swift
//  Postcard
//
//  Created by Ari Mir on 9/22/14.
//  Copyright (c) 2014 Ari Mir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var messageLabel: UILabel!

    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button.
        // adding a comment here to test github
        messageLabel.hidden = false
        messageLabel.text = enterAMessageTextField.text
        enterAMessageTextField.text = ""
        enterAMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState:UIControlState.Normal)
    }

}

