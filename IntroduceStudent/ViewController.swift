//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Khiem Tran Le on 12/19/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var schoolYearSegment: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBOutlet weak var petsStepper: UIStepper!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    @IBOutlet weak var morePetSwitch: UISwitch!
    
    @IBAction func introduceSelf(_ sender: UIButton) {
        
        let year = schoolYearSegment.titleForSegment(at: schoolYearSegment.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I am attending \(schoolNameTextField.text!). I just started my \(year!) year at my school, and I absolutely love the environment here. I own \(numberOfPetsLabel.text!) pets. It is \(morePetSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "Introduce myself", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

