//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Max on 20.06.2024.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var animationInfoLabel: UILabel!
    
    private var animationPreset = Animation.getAnimation()

    @IBAction func runAnimationButtonTapped(_ sender: UIButton) {
        springAnimationView.animation = animationPreset.preset
        springAnimationView.curve = animationPreset.curve
        springAnimationView.force = animationPreset.force
        springAnimationView.duration = animationPreset.duration
        springAnimationView.delay = animationPreset.delay
        springAnimationView.animate()
        setInfoLabel()
        animationPreset = Animation.getAnimation()
        sender.setTitle("Run \(animationPreset.preset)", for: .normal)
    }
    
    private func setInfoLabel() {
        animationInfoLabel.text = 
        """
        preset: \(springAnimationView.animation)
        curve: \(springAnimationView.curve)
        force: \(springAnimationView.force)
        duration: \(springAnimationView.duration)
        delay: \(springAnimationView.delay)
        """
    }
}

