//
//  ViewController.swift
//  Randomizer
//
//  Created by Alexander Kovzhut on 03.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.isTranslucent = false
        
        let leftBarButtonTextAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.systemGreen,
            .font: UIFont(name: "Futura-Bold", size: 20)!
        ]
        let leftButton = self.navigationItem.leftBarButtonItem
        leftButton?.setTitleTextAttributes(leftBarButtonTextAttributes, for: .normal)
        leftButton?.title = "About"

        let rightBarButtonTextAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.green,
            .font: UIFont(name: "Futura-Bold", size: 20)!
        ]
        let rightButton = self.navigationItem.rightBarButtonItem
        rightButton?.setTitleTextAttributes(rightBarButtonTextAttributes, for: .normal)
        rightButton?.setTitleTextAttributes(rightBarButtonTextAttributes, for: .highlighted)
        rightButton?.title = "Settings"
        
        self.view.backgroundColor = .brown
    }


    
    
}

