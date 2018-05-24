//
//  ViewController.swift
//  colorMakerSliders
//
//  Created by WilliamCastellano on 5/24/18.
//  Copyright © 2018 WCTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var redSlider: UISlider!
  @IBOutlet var greenSlider: UISlider!
  @IBOutlet var blueSlider: UISlider!
  
  @IBOutlet var colorView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    formatUI()
    setColor(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
  }
  
  @IBAction func sliderChanged(_ sender: Any) {
    setColor(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
  }
  
  
  func setColor(red: Float, green: Float, blue: Float) {
    
    let CGred = CGFloat(red)
    let CGgreen = CGFloat(green)
    let CGblue = CGFloat(blue)
    
    colorView.backgroundColor = UIColor(displayP3Red: CGred, green: CGgreen, blue: CGblue, alpha: 1)
  }
  
  func formatUI() {
    colorView.layer.borderColor = UIColor.white.cgColor
    colorView.layer.borderWidth = 5
    
    redSlider.minimumTrackTintColor = UIColor.red
    blueSlider.minimumTrackTintColor = UIColor.blue
    greenSlider.minimumTrackTintColor = UIColor.green
  }
}

