//
//  ViewController.swift
//  HelloWorldProject
//
//  Created by Ruslan Kainekeshov on 14.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var redLight: UIView!
    @IBOutlet var yelowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var nextButton: UIButton!
    
    //MARK: - Public Properties
    private var lightCount = 0
    
    //MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.setTitle("START", for: .normal)
        redLight.alpha = 0.3
        yelowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }
    
    override func viewDidLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yelowLight.layer.cornerRadius = yelowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    //MARK: - IB Actions
    @IBAction func nextButtonDidTapped(_ sender: Any) {
        nextButton.setTitle("NEXT", for: .normal)
        lightCount += 1
        switch lightCount {
        case 1:
            switchTheLight(from: greenLight, to: redLight)
        case 2:
            switchTheLight(from: redLight, to: yelowLight)
        default:
            switchTheLight(from: yelowLight, to: greenLight)
            lightCount = 0
        }
    }

    //MARK: - Public Methods
    private func switchTheLight(from: UIView, to: UIView) {
        from.alpha = 0.3
        to.alpha = 1
    }
}

