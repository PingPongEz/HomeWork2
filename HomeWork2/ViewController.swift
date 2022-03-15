//
//  ViewController.swift
//  HomeWork2
//
//  Created by u on 15.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var countOfRed: UILabel!
    @IBOutlet var countOfGreen: UILabel!
    @IBOutlet var countOfBlue: UILabel!
    
    @IBOutlet var currentColorView: UIView!
    
    @IBOutlet var sliderForRed: UISlider!
    @IBOutlet var sliderForGreen: UISlider!
    @IBOutlet var sliderForBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentColorView.layer.cornerRadius = 15
        currentColorView.tintColor.ciColor
        currentColorView.backgroundColor = UIColor(
            red: 1,
            green: 1,
            blue: 1,
            alpha: 1
        )
        
        sliderForRed.minimumTrackTintColor = .red
        sliderForGreen.minimumTrackTintColor = .green
        sliderForBlue.minimumTrackTintColor = .blue
        
    }

    @IBAction func sliderForRedSliding() {
        setColor()
        let roundedValue = roundf(sliderForRed.value * 100) / 100
        countOfRed.text = String(roundedValue)
    }
    
    @IBAction func sliderForGreenSliding() {
        setColor()
        let roundedValue = roundf(sliderForGreen.value * 100) / 100
        countOfGreen.text = String(roundedValue)
    }
    
    @IBAction func sliderForBlueSliding() {
        setColor()
        let roundedValue = roundf(sliderForBlue.value * 100) / 100
        countOfBlue.text = String(roundedValue)
    }
    
}

extension ViewController {
    func setColor() {
        currentColorView.backgroundColor = UIColor(
            red: CGFloat(sliderForRed.value),
            green: CGFloat(sliderForGreen.value),
            blue: CGFloat(sliderForBlue.value),
            alpha: 1
        )
    }
}
