//
//  FeedViewController.swift
//  InstaCloneFirebase
//
//  Created by Arcel de Ocampo on 12/13/23.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FeedCell
        cell.userEmailLabel.text = "user@email.com"
        cell.likeCountLabel.text = "0"
        cell.captionLabel.text = "caption"
        cell.postImageView.image = UIImage(named: "select.png")
        return cell
    }

}
