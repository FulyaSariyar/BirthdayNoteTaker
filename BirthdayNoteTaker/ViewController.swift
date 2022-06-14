//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Fulya Sarıyar on 14.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         //uygulama açıldığında UserDefaults'u çekmeliyiz
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
         
        //Casting - as? vs. as!
        //nameLabel.text = storedName as? String
        
        if let myName = storedName as? String{
            nameLabel.text = "Name: \(myName)"
        }
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
        
        
        
    }

    @IBAction func saveButtonClicked(_ sender: Any) {
        
        
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        //UserDefaults.standart.synchronize()
        
       // nameLabel.text = nameTextField.text
       //birthdayLabel.text = birthdayTextField.text
        nameLabel.text = "Name :\(nameTextField.text!)"
        birthdayLabel.text = "Birthday: \(birthdayTextField.text!)"
        
    }
    
    @IBAction func deleteButtonClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        
        
        if let myName = storedName as? String{
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name:"
        }
        if let myBirthday = storedBirthday as? String{
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday:"
        }
    }
}

