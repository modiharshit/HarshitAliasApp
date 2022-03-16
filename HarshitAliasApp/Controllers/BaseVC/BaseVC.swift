//
//  BaseVC.swift
//  HarshitAliasApp
//
//  Created by Harshit Modi on 2022-03-15.
//

import UIKit

class BaseVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.titleView?.tintColor = .black
    }
    
    class func identifier() -> String {
        return String(describing: self)
    }
    
    // MARK: - Navigation Title
    
    func setNavigationTitle(_ title: String) {
        self.navigationItem.title = title
    }
    
    func setLeftBarButton() {
        let logoutButton: UIBarButtonItem = UIBarButtonItem(image: UIImage(named:"ic_back-white.png"), style: .plain, target: self, action: #selector(BaseVC.popVC))
        self.navigationItem.setLeftBarButtonItems([logoutButton], animated: true)
    }
    
    func removeLeftBarButton() {
        self.navigationItem.leftBarButtonItem = nil
    }
    
    func push(vc: UIViewController) {
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func popVC() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func showAlertWithMessage(msg: String) {
        // Open option of add business / add fundraiser
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}

extension UIStoryboard {
    
    class func main() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
}
