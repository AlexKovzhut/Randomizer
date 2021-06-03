//
//  ViewController.swift
//  Randomizer
//
//  Created by Alexander Kovzhut on 03.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var HelpButton: UIBarButtonItem!
    @IBOutlet weak var SettingButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let leftBarButtonTextAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.red,
            .font: UIFont(name: "AmericanTypewriter-Bold", size: 20)!
            
        ]
        let leftButton = self.navigationItem.leftBarButtonItem
        leftButton?.setTitleTextAttributes(leftBarButtonTextAttributes, for: .normal)
        leftButton?.setTitleTextAttributes(leftBarButtonTextAttributes, for: .highlighted)
        
        let rightBarButtonTextAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.red,
            .font: UIFont(name: "AmericanTypewriter-Bold", size: 20)!
        ]
        let rightButton = self.navigationItem.rightBarButtonItem
        rightButton?.setTitleTextAttributes(rightBarButtonTextAttributes, for: .normal)
        rightButton?.setTitleTextAttributes(rightBarButtonTextAttributes, for: .highlighted)
        
        
        
    }


}

