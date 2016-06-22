//
//  ViewController.swift
//  FoodTracker
//
//  Created by hiroshige negishi on 6/22/2559 BE.
//  Copyright © 2559 ARMS(THAILAND) Co., Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nameTextField.delegate = self
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLable.text = textField.text
    }
    
    // MARK: Actions
    @IBAction func setDefaultText(sender: UIButton) {
        mealNameLable.text = "Default Text"
    }
    

}

