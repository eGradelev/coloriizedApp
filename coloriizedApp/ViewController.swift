//
//  ViewController.swift
//  coloriizedApp
//
//  Created by Gradelev Elisey on 24.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
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
    }
    
    @IBAction func redSliderAction() {
        redMeaning.text = String(format: "%.2f", redSlider.value)
    }
    @IBAction func greenSliderAction() {
        greenMeaning.text = String(format: "%.2f", greenSlider.value)
    }
    @IBAction func blueSliderAction() {
        blueMeaning.text = String(format: "%.2f", blueSlider.value)
        
    }
}

