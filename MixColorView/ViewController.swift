//
//  ViewController.swift
//  MixColorView
//
//  Created by Bulat Kamalov on 26.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var redSliderValue: CGFloat = 0
    var greenSliderValue: CGFloat = 0
    var blueSliderValue: CGFloat = 0
    
    @IBOutlet weak var mixColorView: UIView!
    
    @IBOutlet weak var redColorSLider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    
    @IBOutlet weak var redVolueLabel: UILabel!
    @IBOutlet weak var greenVolueLabel: UILabel!
    @IBOutlet weak var blueVolueLabel: UILabel!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mixColorView.layer.cornerRadius = 20
        
        redLabel.textColor = .red
        redColorSLider.minimumTrackTintColor = .red
        redColorSLider.value = 1
        redColorSLider.minimumValue = 0
        redColorSLider.maximumValue = 1
        redVolueLabel.text = String(redColorSLider.value)
        
        greenLabel.textColor = .green
        greenColorSlider.minimumTrackTintColor = .green
        greenColorSlider.value = 1
        greenColorSlider.minimumValue = 0
        greenColorSlider.maximumValue = 1
        greenVolueLabel.text = String(greenColorSlider.value)
        
        blueLabel.textColor = .blue
        blueColorSlider.minimumTrackTintColor = .blue
        blueColorSlider.value = 1
        blueColorSlider.minimumValue = 0
        blueColorSlider.maximumValue = 1
        blueVolueLabel.text = String(blueColorSlider.value)
    }
    @IBAction private func redSliderAction() {
        redSliderValue = CGFloat(redColorSLider.value)
        
        redVolueLabel.text = String(format: "%.1f", redColorSLider.value)
        mixColorView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
    }
    @IBAction private func greenSliderAction() {
        greenSliderValue = CGFloat(greenColorSlider.value)
        
        greenVolueLabel.text = String(format: "%.1f", greenColorSlider.value)
        mixColorView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
    }
    @IBAction private func blueSliderAction() {
        blueSliderValue = CGFloat(blueColorSlider.value)
        
        blueVolueLabel.text = String(format: "%.1f", blueColorSlider.value)
        mixColorView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
    }
}

