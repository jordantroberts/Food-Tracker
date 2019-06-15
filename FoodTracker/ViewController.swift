//
//  ViewController.swift
//  FoodTracker
//
//  Created by Jordan Roberts on 15/06/2019.
//  Copyright © 2019 Jordan Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //The Text Field Delegate - A set of optional methods that you use to manage the editing and validation of text in a text field object. This means you can implement the protocol’s methods to handle text input, and you can assign instances of the ViewController class as the delegate of the text field.
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field user's input through delegate callbaccks
        nameTextField.delegate = self
        // self here refers to ViewController class, as it's referenced inside the scope of the ViewController class definition
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    // MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        mealNameLabel.text = "Default text"
        
    }
    
}

