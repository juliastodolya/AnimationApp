//
//  Animation.swift
//  AnimationApp
//
//  Created by Юлия on 17.06.2020.
//  Copyright © 2020 Julia Stodolya. All rights reserved.
//

import Foundation

struct Animation {
    var animation: String
    var curve: String
    var forse: Int
    
    static func getRandomAnimationList() -> [Animation] {
        var animationList = [Animation]()
        let animationsArray = DataManager.shared.animations.shuffled()
        for animation in animationsArray {
            let curve = DataManager.shared.curves.shuffled().first!
            let forseLevel = Int.random(in: 1...5)
            
            animationList.append(Animation(animation: animation, curve: curve, forse: forseLevel))
        }
        return animationList
    }
}
