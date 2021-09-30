//
//  SettingsVC.swift
//  Randomizer
//
//  Created by Alexander Kovzhut on 25.09.2021.
//

import UIKit

class SettingsVC: UITableViewController {
    
    var randomNumber: RandomNumber!
    
    var delegate: SettingsVC?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        

        return cell
    }
}
