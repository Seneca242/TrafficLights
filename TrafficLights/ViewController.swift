//
//  ViewController.swift
//  TrafficLights
//
//  Created by Дмитрий Дмитрий on 07.07.2021.
//

import UIKit

enum TrafficLightsColors {
    case upperLight
    case middleLight
    case lowerLight
}

class ViewController: UIViewController {

    @IBOutlet var redLabel: UIView!
    @IBOutlet var yellowLabel: UIView!
    @IBOutlet var greenLabel: UIView!
    
    @IBOutlet var launchButton: UIButton!
    
    let darkenedLabel = 0.3
    let brightLabel = 1.0
    
    var currentLight = TrafficLightsColors.upperLight
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLabel.backgroundColor = .red
        yellowLabel.backgroundColor = .yellow
        greenLabel.backgroundColor = .green
        
        redLabel.alpha = CGFloat(darkenedLabel)
        yellowLabel.alpha = CGFloat(darkenedLabel)
        greenLabel.alpha = CGFloat(darkenedLabel)
        
        redLabel.layer.cornerRadius = redLabel.frame.width / 2
        yellowLabel.layer.cornerRadius = yellowLabel.frame.width / 2
        greenLabel.layer.cornerRadius = greenLabel.frame.width / 2
        
        launchButton.layer.cornerRadius = 11
        launchButton.setTitle("Start", for: .normal)
        launchButton.backgroundColor = .blue
        
    }
    
    @IBAction func buttonPressed() {
        if launchButton.currentTitle == "Start" {
            launchButton.setTitle("Next", for: .normal)
        }
        
        switch currentLight {
        case .upperLight:
            redLabel.alpha = CGFloat(brightLabel)
            yellowLabel.alpha = CGFloat(darkenedLabel)
            greenLabel.alpha = CGFloat(darkenedLabel)
            currentLight = .middleLight
        case .middleLight:
            redLabel.alpha = CGFloat(darkenedLabel)
            yellowLabel.alpha = CGFloat(brightLabel)
            greenLabel.alpha = CGFloat(darkenedLabel)
            currentLight = .lowerLight
        case .lowerLight:
            redLabel.alpha = CGFloat(darkenedLabel)
            yellowLabel.alpha = CGFloat(darkenedLabel)
            greenLabel.alpha = CGFloat(brightLabel)
            currentLight = .upperLight
        }
    }
}

