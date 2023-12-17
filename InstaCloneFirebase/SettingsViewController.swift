//
//  SettingsViewController.swift
//  InstaCloneFirebase
//
//  Created by Arcel de Ocampo on 12/13/23.
//

import UIKit
import FirebaseCore
import FirebaseAnalytics
import FirebaseAuth
import FirebaseFirestore
import FirebaseStorage

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutClicked(_ sender: UIButton) {
        //performSegue(withIdentifier: "toViewController", sender: nil)
        do {
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toViewController", sender: nil)
        } catch {
            print("Error")
        }
    }
    
}
