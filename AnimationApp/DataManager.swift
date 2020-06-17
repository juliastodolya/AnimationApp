//
//  DataManager.swift
//  AnimationApp
//
//  Created by Юлия on 17.06.2020.
//  Copyright © 2020 Julia Stodolya. All rights reserved.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let animations = ["slideLeft",
                      "slideRight",
                      "slideDown",
                      "slideUp",
                      "squeezeLeft",
                      "squeezeRight",
                      "squeezeDown",
                      "squeezeUp",
                      "fadeIn",
                      "fadeOut",
                      "flash",
                      "wobble",
                      "swing"]
    
    let curves = ["easeIn",
                  "easeOut",
                  "easeInOut",
                  "linear",
                  "spring",
                  "easeInSine",
                  "easeOutSine",
                  "easeInOutSine",
                  "easeInQuad",
                  "easeOutQuad"]
}
