//
//  ViewController.swift
//  HelloWorldProject
//
//  Created by Ruslan Kainekeshov on 14.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var bottomView: UIView!
    @IBOutlet var topView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomView.layer.cornerRadius = 10
        topView.layer.cornerRadius = 10
    }


}

