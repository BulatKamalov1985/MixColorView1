//
//  ViewController.swift
//  MixColorView
//
//  Created by Bulat Kamalov on 26.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
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
    
        redVolueLabel.text = String(format: "%.2f", redColorSLider.value)
        greenVolueLabel.text = String(format: "%.2f", greenColorSlider.value)
        blueVolueLabel.text = String(format: "%.2f", blueColorSlider.value)
        
        mixColorView.backgroundColor = UIColor(red: CGFloat(redColorSLider.value), green: CGFloat(greenColorSlider.value), blue: CGFloat(blueColorSlider.value), alpha: 1)
    }

    @IBAction private func redSliderAction() {
        //mixColorView.backgroundColor = UIColor(red: CGFloat(redColorSLider.value), green: CGFloat(greenColorSlider.value), blue: CGFloat(blueColorSlider.value), alpha: 1)
        
    }
    @IBAction private func greenSliderAction() {
       // mixColorView.backgroundColor = UIColor(red: CGFloat(redColorSLider.value), green: CGFloat(greenColorSlider.value), blue: CGFloat(blueColorSlider.value), alpha: 1)
    }
    @IBAction private func blueSliderAction() {
        //mixColorView.backgroundColor = UIColor(red: CGFloat(redColorSLider.value), green: CGFloat(greenColorSlider.value), blue: CGFloat(blueColorSlider.value), alpha: 1)
    }
}

