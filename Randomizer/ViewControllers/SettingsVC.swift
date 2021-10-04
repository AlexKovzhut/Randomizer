//
//  SettingsVC.swift
//  Randomizer
//
//  Created by Alexander Kovzhut on 25.09.2021.
//

import UIKit

protocol SettingsVCDelegate {
   func update(randomNumber: RandomNumber)
}

class SettingsVC: UIViewController {
    
    @IBOutlet weak var fromTextField: UITextField!
    @IBOutlet weak var toTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    var randomNumber: RandomNumber!
    var delegate: SettingsVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fromTextField.text = String(randomNumber.minValue)
        toTextField.text = String(randomNumber.maxValue)
        
        fromTextField.delegate = self
        toTextField.delegate = self
    }
    
    @IBAction func cancelBarButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    @IBAction func savePressButton(_ sender: UIButton) {
        view.endEditing(true)
        delegate?.update(randomNumber: randomNumber)
        dismiss(animated: true)
    }
}

extension SettingsVC: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        randomNumber = RandomNumber(
            minValue: Int(fromTextField.text ?? "0") ?? 0,
            maxValue: Int(toTextField.text ?? "100") ?? 10
        )
    }
}
