//
//  articleTableViewCell.swift
//  tabBarItem
//
//  Created by Imcrinox Mac on 24/12/1444 AH.
//

import UIKit

struct article {
    let avatarImage: String
    let sharedName: String
    let actionType: String
    let articleTitle: String
    let articleCoverImage: String
    let articleSouce: String
    let articleTime: String
}

class articleTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var avatarImg: UIImageView!
    @IBOutlet weak var sharedNameLbl: UILabel!
    @IBOutlet weak var acionTypeLbl: UILabel!
  
    @IBOutlet weak var articleCoverImg: UIImageView!
    @IBOutlet weak var articleTitleLbl: UILabel!
    @IBOutlet weak var articleSourceLbl: UILabel!
    @IBOutlet weak var articleCreateAtLbl: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
