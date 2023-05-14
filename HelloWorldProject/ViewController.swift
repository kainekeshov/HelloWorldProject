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
        let modificator = CGFloat(cornerRadiusModificator)
        bottomView.layer.cornerRadius += modificator
        topView.layer.cornerRadius += modificator
        if bottomView.layer.cornerRadius >= 60 {
            resetButtonDidTapped()
        }
    }
    
    @IBAction func minusButtonDidTapped() {
        let modificator = CGFloat(cornerRadiusModificator)
        bottomView.layer.cornerRadius -= modificator
        topView.layer.cornerRadius -= modificator
        if bottomView.layer.cornerRadius <= 1 {
            resetButtonDidTapped()
        }
    }
    
    @IBAction func resetButtonDidTapped() {
        bottomView.layer.cornerRadius = 10
        topView.layer.cornerRadius = 10
    }
    
}

