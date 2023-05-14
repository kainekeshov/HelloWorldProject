//
//  ViewController.swift
//  HelloWorldProject
//
//  Created by Ruslan Kainekeshov on 14.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
     
    @IBOutlet var redLight: UIView!
    @IBOutlet var yelowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.opacity = 0.3
        yelowLight.layer.opacity = 0.3
        greenLight.layer.opacity = 0.3
    }
    
//    func setDefaultSettings(to outlet: UIView, with) {

    
}

