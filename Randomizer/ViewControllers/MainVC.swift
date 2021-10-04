//
//  MainVC.swift
//  Randomizer
//
//  Created by Alexander Kovzhut on 25.09.2021.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var minimumValueLabel: UILabel!
    @IBOutlet weak var maximumValueLabel: UILabel!
    @IBOutlet weak var randomValuelabel: UILabel!
    @IBOutlet weak var getRandomNumberButton: UIButton!
    
    private var randomNumber = RandomNumber(minValue: 0, maxValue: 10) {
        didSet {
            minimumValueLabel.text = String(randomNumber.minValue)
            maximumValueLabel.text = String(randomNumber.maxValue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minimumValueLabel.text = String(randomNumber.minValue)
        maximumValueLabel.text = String(randomNumber.maxValue)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let settingsVC = navigationVC.topViewController as? SettingsVC else { return }
        
        settingsVC.randomNumber = randomNumber
        settingsVC.delegate = self
    }
    
    @IBAction func getRandomNumberButtonTapped(_ sender: UIButton) {
        randomValuelabel.text = String(randomNumber.getRandom)
    }
    
}

extension MainVC: SettingsVCDelegate {
    func update(randomNumber: RandomNumber) {
        self.randomNumber = randomNumber
    }
}
