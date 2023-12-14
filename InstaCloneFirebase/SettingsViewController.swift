//
//  SettingsViewController.swift
//  InstaCloneFirebase
//
//  Created by Arcel de Ocampo on 12/13/23.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutClicked(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toViewController", sender: nil)
    }
    
}
