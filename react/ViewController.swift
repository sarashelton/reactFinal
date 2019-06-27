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
    @IBOutlet var secondDropDown: [UIButton]!
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
    
    @IBAction func secondHandleSelection(_ sender: UIButton) {
        secondDropDown.forEach { (button2) in
            UIView.animate(withDuration: 0.3
                , animations: {
                    button2.isHidden = !button2.isHidden
                    self.view.layoutIfNeeded()
            })
        }
    }

    
    @IBAction func firstDropTapped(_ sender: UIButton) {
    }
    @IBAction func secondDropTapped(_ sender: UIButton) {
    }
}

