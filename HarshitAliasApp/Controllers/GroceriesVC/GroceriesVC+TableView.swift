//
//  GroceriesVC+TableView.swift
//  HarshitAliasApp
//
//  Created by Harshit Modi on 2022-03-15.
//

import Foundation
import UIKit

extension GroceriesVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrBusinesses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ListTableViewCell = tableView.dequeueReusableCell(withIdentifier: ListTableViewCell.reuseIdentifier()) as! ListTableViewCell
        cell.configureCell(business: self.arrBusinesses[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailVC.instantiate()
        vc.business = self.arrBusinesses[indexPath.row]
        self.push(vc: vc)
    }
}
