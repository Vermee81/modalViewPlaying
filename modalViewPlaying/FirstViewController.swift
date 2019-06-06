//
//  ViewController.swift
//  modalViewPlaying
//
//  Created by Hiroo Kusaba on 2019/06/07.
//  Copyright © 2019 Hiroo Kusaba. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, SecondViewControllerDelegate {
    
    
    func secondViewController(_ viewController: SecondViewController, didTapButton button: UIButton) {
        dismiss(animated: true, completion: nil)
        present(viewController, animated: true, completion: nil)
    }
    
    @IBAction func firstButtonTapped(_ sender: UIButton) {
        guard case let secondViewController as SecondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") else{
            return
        }
        secondViewController.delegate = self
        present(secondViewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

