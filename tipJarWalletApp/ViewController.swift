//
// What is viewController
// Source code for View Controller

//  ViewController.swift
//  tipJarWalletApp
//
//  Created by George Boots on 24/7/20.
//  Copyright © 2020 George Boots. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Segues {
        static let infoChart = "infoChart"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    
    
    @IBAction func didTapButton(){
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "FirstChild") as? FirstChildVC else {
            print ("failed")
            return
        }
        
        present(vc, animated: true)
    }
}
    
    

