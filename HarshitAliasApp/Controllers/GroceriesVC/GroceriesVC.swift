//
//  GroceriesVC.swift
//  HarshitAliasApp
//
//  Created by Harshit Modi on 2022-03-15.
//

import UIKit

class GroceriesVC: BaseVC {

    @IBOutlet weak var tableView: UITableView!
    
    var arrBusinesses : [Businesses] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerTableViewCell()
        self.getNearbyGroceries()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.setNavigationTitle("Groceries")
    }
    // MARK: - Class Methods
    
    class func instantiate() -> GroceriesVC {
        return UIStoryboard.main().instantiateViewController(withIdentifier: GroceriesVC.identifier()) as! GroceriesVC
    }
    
    func registerTableViewCell() {
        tableView.register(UINib(nibName: "ListTableViewCell", bundle: nil), forCellReuseIdentifier: ListTableViewCell.reuseIdentifier())
    }
    
    
}
