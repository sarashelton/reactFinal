//
//  ViewController.swift
//  react
//
//  Created by sara shelton on 6/26/19.
//  Copyright © 2019 sara shelton. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate {
    
    @IBOutlet var firstDropDown: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func firstHandleSelection(_ sender: UIButton) {
        firstDropDown.forEach { (button) in
            UIView.animate(withDuration: 0.3
                , animations: {
                    button.isHidden = !button.isHidden
                    self.view.layoutIfNeeded()

            })
        }
    }
    
//    enum Reacts: String {
//        case .get
//    }

    @IBAction func firstDropTapped(_ sender: UIButton) {
//        guard let title = sender.currentTitle else {
//            return
//        }
    }
}

