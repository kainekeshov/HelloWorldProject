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
    
    let cornerRadiusModificator = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomView.layer.cornerRadius = 10
        topView.layer.cornerRadius = 10
    }

    @IBAction func plusButtonDidTapped() {
        bottomView.layer.cornerRadius += 5
        topView.layer.cornerRadius += 5
        if bottomView.layer.cornerRadius >= 60 {
            resetButtonDidTapped()
        }
    }
    
    @IBAction func minusButtonDidTapped() {
        bottomView.layer.cornerRadius -= 5
        topView.layer.cornerRadius -= 5
        if bottomView.layer.cornerRadius == 0 {
            resetButtonDidTapped()
        }
    }
    
    @IBAction func resetButtonDidTapped() {
        bottomView.layer.cornerRadius = 10
        topView.layer.cornerRadius = 10
    }
    
}

