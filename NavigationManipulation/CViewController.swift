//
//  CViewController.swift
//  NavigationManipulation
//
//  Created by Jefferson Setiawan on 26/06/18.
//  Copyright © 2018 Jefferson Setiawan. All rights reserved.
//

import UIKit

class CViewController: UIViewController {

    private let goToD: Bool
    init(goToD: Bool = false) {
        self.goToD = goToD
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.title = "Step 1 dari 3, Description"
        if goToD {
            let vc = DViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
