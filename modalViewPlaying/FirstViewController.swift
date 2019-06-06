//
//  ViewController.swift
//  modalViewPlaying
//
//  Created by Hiroo Kusaba on 2019/06/07.
//  Copyright © 2019 Hiroo Kusaba. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    private var isFirstTime = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if isFirstTime{
            isFirstTime = false
            return
        }
        showSecondViewController()
    }
    
    @IBAction func firstButtonTapped(_ sender: UIButton) {
        showSecondViewController()
    }
    
    private func showSecondViewController(){
        guard let secondViewController  = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else{
            return
        }
        secondViewController.delegate = self
        present(secondViewController, animated: true, completion: nil)
    }

}

extension FirstViewController: SecondViewControllerDelegate{
    func secondViewController(_ viewController: SecondViewController, didTapButton button: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

