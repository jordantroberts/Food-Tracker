//
//  ViewController.swift
//  FoodTracker
//
//  Created by Jordan Roberts on 15/06/2019.
//  Copyright © 2019 Jordan Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
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
    
    // MARK: UIImagePickerControllerDelegate
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
       
        // Dismiss the picker if the user cancelled
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        // Set photoImageView to display the selected image.
        photoImageview.image = selectedImage
        
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }
  
    
    // MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        mealNameLabel.text = "Default text"
        
    }
    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        // Hide the keyboard
        nameTextField.resignFirstResponder()
        //This code ensures that if the user taps the image view while typing in the text field, the keyboard is dismissed properly.
        let imagePickerController = UIImagePickerController()
        // UIImagePickerController is a view controller that lets a user pick a photo from their photo library
        
        imagePickerController.sourceType = .photoLibrary
        // Photo can only be picked, not taken
        // .photoLibrary will use the camera roll
        
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
        
    }
}

