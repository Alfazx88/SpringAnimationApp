//
//  Model.swift
//  SpringAnimationApp
//
//  Created by Max on 25.06.2024.
//

struct Animation {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> Animation {
        
        let data = DataStore.shared
        
        let animation = Animation(
            preset: data.animationPresets.randomElement()?.rawValue ?? "pop",
            curve: data.curves.randomElement()?.rawValue ?? "easeInOut",
            force: Double.random(in: 0.2...0.99),
            duration: Double.random(in: 0.3...0.99),
            delay: Double.random(in: 0.1...0.8)
        )
        
        return animation
    }
    
    
    
    
    
//preset: \(springAnimationView.animation)
//curve: \(springAnimationView.curve)
//force: \(springAnimationView.force)
//duration: \(springAnimationView.duration)
//delay: \(springAnimationView.delay)
}
    
