//
//  ViewController.swift
//  ChangeColor
//
//  Created by Иван Луганцов on 27.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var screenView: UIView!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    @IBOutlet var redColorValue: UILabel!
    @IBOutlet var greenColorValue: UILabel!
    @IBOutlet var blueColorValue: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenView.layer.cornerRadius = screenView.frame.width / 5
        
        redColorValue.text = String(sliderRed.value)
        greenColorValue.text = String(sliderGreen.value)
        blueColorValue.text = String(sliderBlue.value)
        
        
    }
    
    func changeColor() {
        screenView.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    
    @IBAction func slidersAction() {
        redColorValue.text = String(format: "%.1f", sliderRed.value)
        greenColorValue.text = String(format: "%.1f", sliderGreen.value)
        blueColorValue.text = String(format: "%.1f", sliderBlue.value)
        
        changeColor()
    }
}
