//
//  RestaurantsVC.swift
//  HarshitAliasApp
//
//  Created by Harshit Modi on 2022-03-15.
//

import Foundation
import UIKit
import CoreLocation

class RestaurantsVC: BaseVC {

    @IBOutlet weak var tableView: UITableView!
    
    var arrBusinesses : [Businesses] = []
    var locationManager: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerTableViewCell()
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setNavigationTitle("Restaurants")
    }
    
    // MARK: - Class Methods
    
    class func instantiate() -> RestaurantsVC {
        return UIStoryboard.main().instantiateViewController(withIdentifier: RestaurantsVC.identifier()) as! RestaurantsVC
    }
    
    func registerTableViewCell() {
        tableView.register(UINib(nibName: "ListTableViewCell", bundle: nil), forCellReuseIdentifier: ListTableViewCell.reuseIdentifier())
    }
}

extension RestaurantsVC: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status != .authorizedWhenInUse {return}
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        let locValue: CLLocationCoordinate2D = manager.location!.coordinate
        print("locations = \(locValue.latitude) \(locValue.longitude)")
        
        userLatitude = "\(locValue.latitude)"
        userLongitude = "\(locValue.longitude)"

        self.getNearbyRestaurants()
        locationManager.stopUpdatingLocation()
    }
}
