//
//  RestaurantVC+Services.swift
//  HarshitAliasApp
//
//  Created by Harshit Modi on 2022-03-15.
//

import Foundation
import UIKit
import Alamofire
import SwiftyJSON
import ObjectMapper

extension RestaurantsVC {
    
    func getNearbyRestaurants() {
        self.arrBusinesses.removeAll()
        
        _ = Alamofire.request(GET_RESTAURANTS + "latitude=\(userLatitude)&longitude=\(userLongitude)", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: authHeader).validate().responseJSON { (response) in
            print("--------- Request URL - %@", response.request?.url ?? "")
            
            switch response.result {
            case .success:
                if let value = response.result.value {
                    let json = JSON(value)
                    print("JSON: \(json)")
                    if let resultArray = json["businesses"].array {
                        print(resultArray)
                        
                        for i in 0 ..< resultArray.count {
                            let business : Businesses = Mapper<Businesses>().map(JSON: resultArray[i].rawValue as! [String : Any])!
                            self.arrBusinesses.append(business)
                        }
                        self.tableView.reloadData()
                    } else {
                        self.showAlertWithMessage(msg: "INVALID_RESPONSE")
                    }
                }
            case .failure(let error):
                print(error)
                if let data = response.data {
                    print("Response data: \(NSString(data: data, encoding: String.Encoding.utf8.rawValue)!)")
                    self.showAlertWithMessage(msg: error.localizedDescription)
                }
            }
        }
    }
}
