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
    
    //MARK: - Public Properties
    let defaultOpacity: Float = 0.3
    let defaultCornerRadius: CGFloat = 65
    var lightCount = 0
    
    //MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDefaultSettings(to: redLight, opacity: defaultOpacity, cornerRadius: defaultCornerRadius)
        setDefaultSettings(to: yelowLight, opacity: defaultOpacity, cornerRadius: defaultCornerRadius)
        setDefaultSettings(to: greenLight, opacity: defaultOpacity, cornerRadius: defaultCornerRadius)
    }
    
    //MARK: - IB Actions
    @IBAction func nextButtonDidTapped(_ sender: Any) {
        lightCount += 1
        switch lightCount {
        case 1:
            turnOnTheLight(redLight)
            turnOffTheLight(greenLight)
        case 2:
            turnOnTheLight(yelowLight)
            turnOffTheLight(redLight)
        default:
            turnOnTheLight(greenLight)
            turnOffTheLight(yelowLight)
            lightCount = 0
        }
    }
    
    //MARK: - Public Methods
    func setDefaultSettings(to outlet: UIView, opacity: Float, cornerRadius: CGFloat) {
        outlet.layer.opacity = opacity
        outlet.layer.cornerRadius = cornerRadius
    }
    func turnOnTheLight(_ light: UIView) {
        light.layer.opacity = 1
    }
    func turnOffTheLight( _ light: UIView) {
        light.layer.opacity = defaultOpacity
    }
    
}

