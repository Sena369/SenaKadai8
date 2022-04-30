//
//  ModelLocator.swift
//  KadaiChallenge8
//
//  Created by akio0911 on 2022/04/30.
//

import Foundation

class ModelLocator {
    static let shared = ModelLocator()
    private init() {}
    
    let valueModel = ValueModel()
}
