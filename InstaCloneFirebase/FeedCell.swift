//
//  FeedCell.swift
//  InstaCloneFirebase
//
//  Created by Arcel de Ocampo on 12/22/23.
//

import UIKit
import FirebaseCore
import FirebaseAnalytics
import FirebaseAuth
import FirebaseFirestore
import FirebaseStorage

class FeedCell: UITableViewCell {

    @IBOutlet weak var userEmailLabel: UILabel!
    @IBOutlet var postImageView: UIImageView!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var documentIdLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func likedButtonClicked(_ sender: UIButton) {
        if sender.currentImage == UIImage(systemName: "heart") {
                sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            } else {
                sender.setImage(UIImage(systemName: "heart"), for: .normal)
            }
        let fireStoreDatabase = Firestore.firestore()
        if let likeCount = Int(likeCountLabel.text!) {
            let likeStore = ["likes" : likeCount + 1] as [String : Any]
            fireStoreDatabase.collection("Posts").document(documentIdLabel.text!).setData(likeStore, merge: true)
        }
        
    }
}

