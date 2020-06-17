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
    var index = 0
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var nameAnimationLabel: UILabel!
    @IBOutlet var startButton: SpringButton!
    
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        setNames()
        springAnimationView.animation = animations[index].animation
        springAnimationView.curve = animations[index].curve
        springAnimationView.force = CGFloat(animations[index].forse)
        if index == animations.count - 1 {
            index = 0
        } else {
            index += 1
        }
       
        springAnimationView.animate()
    }
    
    private func setNames() {
        nameAnimationLabel.text = "Now you see: " + animations[index].animation
        
        if index == animations.count - 1 {
            startButton.setTitle("Next is: " + animations.first!.animation, for: .normal)
        } else {
            startButton.setTitle("Next is: " + animations[index + 1].animation, for: .normal)
        }
    }
}
