//
//  BViewController.swift
//  NavigationManipulation
//
//  Created by Jefferson Setiawan on 26/06/18.
//  Copyright © 2018 Jefferson Setiawan. All rights reserved.
//

import UIKit

class BViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.title = "Success Reserve"
    }
    
    @IBAction func toVcC(_ sender: Any) {
        guard let nav = navigationController else { return }
        var newViewControllers = [nav.viewControllers.first!]
        let vc = CViewController()
        newViewControllers.append(vc)
        self.navigationController?.setViewControllers(newViewControllers, animated: true)
    }
}
