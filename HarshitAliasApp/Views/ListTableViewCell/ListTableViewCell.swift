//
//  ListTableViewCell.swift
//  HarshitAliasApp
//
//  Created by Harshit Modi on 2022-03-15.
//

import UIKit
import SDWebImage

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    class func reuseIdentifier() -> String {
        return String(describing: self)
    }
    
    func configureCell(business: Businesses?) {
        
        self.lblName.text = business?.name
        self.lblPhone.text = business?.phone
        self.lblLocation.text = business?.location?.displayAddress?.first
        
        self.imgView.sd_setImage(with: URL(string: business?.imageURL ?? ""), placeholderImage: UIImage(named: "ic_placeholder.png"))
    }
}
