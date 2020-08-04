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
import Foundation

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
// Method below instantiates storyboard (StoryboardID = FirstChild)
    @IBAction func didTapButton() {
        guard let vc = storyboard?.instantiateViewController(identifier: "FirstChild") as? FirstChildVC else {
            return
        }
        present(vc, animated:true)
    }
    
}

// guard - unwrap and cast when selected



/*
extension ViewController: UITableViewDelegate {
    func tableView(_tableView: UITableView, didSelectRowAt indexPath: IndexPath){
    print("you tapped")
    }

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
        }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = ":)"
        return cell
    }
        
    }
}

    
*/
   /*
   func createArray() -> [Image] {
       
       var tempImage: [Image] = []
       
       let image1 = Image(image: #imageLiteral(resourceName: "anz-bank-logo.png"), title: "ANZ")
       let image2 = Image(image: #imageLiteral(resourceName: "ETFlogo_RGB.png"), title: "eTrade")
       
       tempImage.append(image1)
       tempImage.append(image2)
       
       return tempImage
   }
 
*/
