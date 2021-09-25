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
    @IBOutlet weak var getRandomNumberButton: UIButton!
    
    private var randomNumber = RandomNumber(minValue: 0, maxValue: 100) {
        didSet {
            minimumValueLabel.text = String(randomNumber.minValue)
            maximumValueLabel.text = String(randomNumber.maxValue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let settingsVC = navigationVC.topViewController as? SettingsVC else { return }
    }
    
    @IBAction func getRandomNumberButtonTapped(_ sender: UIButton) {
        
    }
    
}

extension MainVC: SettingsVC {
    func update(randomNumber: RandomNumber) {
        self.randomNumber = randomNumber
    }
}
