//
//  SecondViewController.swift
//  modalViewPlaying
//
//  Created by Hiroo Kusaba on 2019/06/07.
//  Copyright © 2019 Hiroo Kusaba. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    weak var delegate: SecondViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        delegate?.secondViewController(self, didTapButton: sender)
    }
    
}

protocol SecondViewControllerDelegate: class{
    func secondViewController(_ viewController: SecondViewController, didTapButton button: UIButton)
}
