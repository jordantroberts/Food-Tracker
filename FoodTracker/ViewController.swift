//
//  ViewController.swift
//  FoodTracker
//
//  Created by Jordan Roberts on 15/06/2019.
//  Copyright © 2019 Jordan Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //The Text Field Delegate - A set of optional methods that you use to manage the editing and validation of text in a text field object.
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        mealNameLabel.text = "Default text"
        
    }
    
}

