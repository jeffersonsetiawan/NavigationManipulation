//
//  ViewController.swift
//  NavigationManipulation
//
//  Created by Jefferson Setiawan on 26/06/18.
//  Copyright © 2018 Jefferson Setiawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func toVcA(_ sender: Any) {
        let vc = AViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func goToAStraightToD(_ sender: Any) {
        let vc = AViewController(goStraightToD: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
