//
//  DetailVC.swift
//  HarshitAliasApp
//
//  Created by Harshit Modi on 2022-03-15.
//

import UIKit

class DetailVC: BaseVC {

    var business : Businesses = Businesses()
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var lblReviewCount: UILabel!
    @IBOutlet weak var lblIsItAvailable: UILabel!
    
    @IBOutlet weak var btnReservation: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.autoLoadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setNavigationTitle(self.business.name ?? "Details")
    }
    
    class func instantiate() -> DetailVC {
        return UIStoryboard.main().instantiateViewController(withIdentifier: DetailVC.identifier()) as! DetailVC
    }
    
    func autoLoadData() {
        
        self.imgView.sd_setImage(with: URL(string: self.business.imageURL ?? ""), placeholderImage: UIImage(named: "ic_placeholder.png"))
        
        self.lblLocation.text = self.business.location?.displayAddress?.joined()
        
        self.lblPhone.text = self.business.phone
        self.lblRating.text = "Rating : \(self.business.rating ?? 0)"
        self.lblReviewCount.text = "Review count: \(self.business.reviewCount ?? 0)"
        if let isClosed = self.business.isClosed, isClosed {
            self.lblIsItAvailable.text = "Is it open? NO"
            self.btnReservation.isHidden = true
        } else {
            self.lblIsItAvailable.text = "Is it open? YES"
            self.btnReservation.isHidden = false
        }
        
    }
    
    @IBAction func btnReservationAction(_ sender: Any) {
        if let url = URL(string: self.business.url ?? "") {
            UIApplication.shared.open(url)
        }
    }
    
}
