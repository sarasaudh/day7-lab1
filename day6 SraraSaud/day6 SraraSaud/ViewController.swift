//
//  ViewController.swift
//  day6 SraraSaud
//
//  Created by SARA SAUD on 2/26/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    var imojys : [String] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
  
     
            let gradient = CAGradientLayer()

    gradient.frame = view.bounds
            gradient.colors = [
                UIColor.systemPink.cgColor,
                UIColor.purple.cgColor,
                UIColor.cyan.cgColor,UIColor.systemPink.cgColor,
                UIColor.purple.cgColor,
                UIColor.cyan.cgColor,UIColor.systemPink.cgColor,
                UIColor.purple.cgColor,
                UIColor.cyan.cgColor,UIColor.systemPink.cgColor,
                UIColor.purple.cgColor,
                UIColor.cyan.cgColor ]
        
        view.layer.addSublayer(gradient)
}

}

