//
//  ModelLocator.swift
//  KadaiChallenge8
//
//  Created by 澤田世那 on 2022/05/01.
//

import Foundation

final class ModelLocator {
    static let shared = ModelLocator()
    private init () {}

    let valueModel = ValueModel()
}
