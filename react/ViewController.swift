//
//  ViewController.swift
//  react
//
//  Created by sara shelton on 6/26/19.
//  Copyright © 2019 sara shelton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var smallButtons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func bigButton(_ sender: UIButton) {
        smallButtons.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    enum Pages : String{
        case getinformed = "get informed"
        case getinvolved = "get involved"
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle, let choices = Pages(rawValue: title) else{
            return
        }
    }
    
}

