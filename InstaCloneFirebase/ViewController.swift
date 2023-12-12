//
//  ViewController.swift
//  InstaCloneFirebase
//
//  Created by Ana Naomi Erlandez on 12/8/23.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toFeedVC", sender: nil)
    }
    
    @IBAction func signupClicked(_ sender: UIButton) {
    }
}

