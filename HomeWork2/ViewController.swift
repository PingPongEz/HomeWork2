//
//  ViewController.swift
//  HomeWork2
//
//  Created by u on 15.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    @IBOutlet var blueColorView: UIView!
    
    @IBOutlet var countOfRed: UILabel!
    @IBOutlet var countOfGreen: UILabel!
    @IBOutlet var countOfBlue: UILabel!
    
    
    @IBOutlet var sliderForRed: UISlider!
    @IBOutlet var sliderForGreen: UISlider!
    @IBOutlet var sliderForBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorView.backgroundColor = .red
        greenColorView.backgroundColor = .green
        blueColorView.backgroundColor = .blue
        
        sliderForRed.minimumTrackTintColor = .red
        sliderForGreen.minimumTrackTintColor = .green
        sliderForBlue.minimumTrackTintColor = .blue
        
    }

    @IBAction func sliderForRedSliding() {
    }
    
    @IBAction func sliderForGreenSliding() {
    }
    
    @IBAction func sliderForBlueSliding() {
    }
    
    
    
}

extension ViewController {
    
}
