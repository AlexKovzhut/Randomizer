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

class SettingsVC: UITableViewController {
    
    var randomNumber: RandomNumber!
    var delegate: SettingsVC?
    
    @IBOutlet weak var enterNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveBarButton(_ sender: UIBarButtonItem) {
        view.endEditing(true)
        delegate?.update(randomNumber: randomNumber)
        dismiss(animated: true)
    }
    
    @IBAction func cancelBarButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NumbersCell", for: indexPath)
        
//        var content = cell.defaultContentConfiguration()
//
//        enterNumberTextField.text = content.text
//
//        cell.contentConfiguration = content

        return cell
    }
}

extension SettingsVC: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        randomNumber = RandomNumber(
            minimumValue: min
        )
    }
}
