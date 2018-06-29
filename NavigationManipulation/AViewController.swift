//
//  AViewController.swift
//  NavigationManipulation
//
//  Created by Jefferson Setiawan on 26/06/18.
//  Copyright © 2018 Jefferson Setiawan. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

    private let goStraightToD: Bool
    init(goStraightToD: Bool = false) {
        self.goStraightToD = goStraightToD
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.title = "Reserve Domain"
        if goStraightToD {
            guard let nav = navigationController else { return }
            var newViewControllers = [nav.viewControllers.first!]
            let vc = CViewController(goToD: true)
            newViewControllers.append(vc)
            self.navigationController?.setViewControllers(newViewControllers, animated: true)
        }

        NotificationCenter.default.addObserver(self, selector: #selector(self.toVcB(_:)), name: NSNotification.Name(rawValue: "emailVerified"), object: nil)
    }

    @IBAction func toVcB(_ sender: Any) {
        guard let nav = navigationController else { return }
        var newViewControllers = [nav.viewControllers.first!]
        let vc = BViewController()
        newViewControllers.append(vc)
        self.navigationController?.setViewControllers(newViewControllers, animated: true)
    }
    @IBAction func toVcC(_ sender: Any) {
        guard let nav = navigationController else { return }
        var newViewControllers = [nav.viewControllers.first!]
        let vc = CViewController(goToD: true)
        newViewControllers.append(vc)
        self.navigationController?.setViewControllers(newViewControllers, animated: true)
    }
    @IBAction func verifyPhoneTapped(_ sender: Any) {
        let vc = EViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
