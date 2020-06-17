//
//  ViewController.swift
//  AnimationApp
//
//  Created by Юлия on 16.06.2020.
//  Copyright © 2020 Julia Stodolya. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    let animations = Animation.getRandomAnimationList()
    
    private var index = 0
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var nameAnimationLabel: UILabel!
    @IBOutlet var startButton: SpringButton!
    
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        setNames()
        viewAnimate()
    }
    
    private func setNames() {
        nameAnimationLabel.text = "Now you see: " + animations[index].animation
        
        if index == animations.count - 1 {
            startButton.setTitle("Next is: " + animations.first!.animation, for: .normal)
        } else {
            startButton.setTitle("Next is: " + animations[index + 1].animation, for: .normal)
        }
    }
    
    private func viewAnimate() {
        springAnimationView.animation = animations[index].animation
        springAnimationView.curve = animations[index].curve
        springAnimationView.force = CGFloat(animations[index].forse)
        
        index = index == animations.count - 1 ? 0 : index + 1

        springAnimationView.animate()
    }
}
