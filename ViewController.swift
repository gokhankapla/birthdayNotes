//
//  ViewController.swift
//  DogumGunuNotAlmak
//
//  Created by Gökhan Kaplan on 14.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayDateTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var BirthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String {
           nameLabel.text = newName
        }
        
        if let newBirthday = storedBirthday as? String
        {
           BirthdayLabel.text = newBirthday
        }
        
    }

    @IBAction func saveButton(_ sender: Any) {
        nameLabel.text = "Name: \(nameTextField.text!)"
        BirthdayLabel.text = "Birthday: \(birthdayDateTextField.text!)"
        
        UserDefaults.standard.set(nameTextField.text, forKey: "name")
        UserDefaults.standard.set(birthdayDateTextField.text, forKey: "birthday")
    }
    
}

