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
        // Do any additional setup after loading the view.
    }

    @IBAction func saveButtonClicked(_ sender: Any) {
        
       // nameLabel.text = nameTextField.text
       //birthdayLabel.text = birthdayTextField.text
        
        nameLabel.text = "Name :\(nameTextField.text!)"
        birthdayLabel.text = "Birthday \(birthdayTextField.text!)"
        
    }
    
}

