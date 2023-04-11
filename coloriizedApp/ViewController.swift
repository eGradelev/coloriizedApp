//
//  ViewController.swift
//  coloriizedApp
//
//  Created by Gradelev Elisey on 24.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redMeaning: UILabel!
    @IBOutlet var greenMeaning: UILabel!
    @IBOutlet var blueMeaning: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 20
        setColor()
        
        redMeaning.text = string(from: redSlider)
        greenMeaning.text = string(from: greenSlider)
        blueMeaning.text = string(from: blueSlider)
    }
    
    
    @IBAction func sliderAction(_ sender: UISlider) {
        setColor()
        switch sender {
        case redSlider:
            redMeaning.text = string(from: redSlider)
        case greenSlider:
            greenMeaning.text = string(from: greenSlider)
        default:
            blueMeaning.text = string(from: blueSlider)
        }
    }
    
    private func setColor() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

