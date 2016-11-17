//
//  ViewController.swift
//  BlinkingLabel
//
//  Created by Carey Sam on 11/17/2016.
//  Copyright (c) 2016 Carey Sam. All rights reserved.
//

import UIKit
import BlinkingLabel

class ViewController: UIViewController {
    
    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect(origin: CGPoint(x: 10,y :20), size: CGSize(width: 200, height: 30)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRect(origin: CGPoint(x: 10,y :60), size: CGSize(width: 125, height: 30)))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action: #selector(ViewController.toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
    }
    
    func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }
    
}

