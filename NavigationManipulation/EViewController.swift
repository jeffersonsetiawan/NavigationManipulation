//
//  EViewController.swift
//  NavigationManipulation
//
//  Created by Jefferson Setiawan on 29/06/18.
//  Copyright © 2018 Jefferson Setiawan. All rights reserved.
//

import UIKit

class EViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.title = "Verify Email"
    }
    
    @IBAction func verifyEmailTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        NotificationCenter.default.post(name: Notification.Name("emailVerified"), object: nil)
    }
    
}
