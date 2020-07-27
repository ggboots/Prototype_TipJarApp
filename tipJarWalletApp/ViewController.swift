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
    
    let secondChildVC = SecondChildVC()

    enum Segues {
        static let infoChart = "infoChart"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSecondChildVC()
    }

    
    func addSecondChildVC(){
        addChild(secondChildVC)
        view.addSubview(secondChildVC.view)
        secondChildVC.didMove(toParent: self)
        setSecondChildVCConstraints()
    }
    
    func setSecondChildVCConstraints(){
        secondChildVC.view.translatesAutoresizingMaskIntoConstraints = false
        secondChildVC.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        secondChildVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        secondChildVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        secondChildVC.view.heightAnchor.constraint(equalToConstant: 200).isActive = true

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segues.infoChart {
            let destVC = segue.destination as! FirstChildVC
            destVC.view.backgroundColor = .blue
        }
    }
}

