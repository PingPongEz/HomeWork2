//
//  ViewController.swift
//  HomeWork2
//
//  Created by u on 15.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet private var countOfRed: UILabel!
    @IBOutlet private var countOfGreen: UILabel!
    @IBOutlet private var countOfBlue: UILabel!
    
    @IBOutlet private var currentColorView: UIView!
    
    @IBOutlet private var sliderForRed: UISlider!
    @IBOutlet private var sliderForGreen: UISlider!
    @IBOutlet private var sliderForBlue: UISlider!
    
    @IBOutlet private var buttonToGetColor: UIButton!
    
    @IBOutlet private var convertedReed: UILabel!
    @IBOutlet private var convertedGreen: UILabel!
    @IBOutlet private var convertedBlue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentColorView.layer.cornerRadius = 15
        currentColorView.backgroundColor = UIColor(
            red: 1,
            green: 1,
            blue: 1,
            alpha: 1
        )
        currentColorView.layer.borderWidth = 1.4
        currentColorView.layer.borderColor = UIColor(red: 0,
                                                     green: 0,
                                                     blue: 0,
                                                     alpha: 1).cgColor
        
        sliderForRed.minimumTrackTintColor = .red
        sliderForGreen.minimumTrackTintColor = .green
        sliderForBlue.minimumTrackTintColor = .blue
        
        buttonToGetColor.layer.cornerRadius = 15
        
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
    
    @IBAction func gettingColor() {
        let color = CIColor(color: currentColorView.backgroundColor!)
        convertedReed.text =
        String(roundf(Float(color.red) * 255 * 1) / 1)
        
        convertedGreen.text =
        String(roundf(Float(color.green) * 255 * 1) / 1)
        
        convertedBlue.text =
        String(roundf(Float(color.blue) * 255 * 1) / 1)
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
        print(CIColor.init(color: currentColorView.backgroundColor!))
    }
}

