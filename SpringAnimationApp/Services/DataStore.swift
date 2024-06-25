//
//  DataStore.swift
//  SpringAnimationApp
//
//  Created by Max on 25.06.2024.
//

import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    
    let animationPresets = AnimationPreset.allCases    
    let curves = AnimationCurve.allCases
    
    private init() {}
}
