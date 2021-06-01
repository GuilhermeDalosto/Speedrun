//
//  Run.swift
//  Model
//
//  Created by Guilherme Martins Dalosto de Oliveira on 01/06/21.
//

import Foundation

public struct Model {
    let user: String // user ID; when given, only returns runs played by that user
    let guest: String // when given, only returns runs done by that guest
    let examiner: String // user ID; when given, only returns runs examined by that user
    let game: String // game ID; when given, restricts to that game
    let level: String // level ID; when given, restricts to that level
    let category: String // category ID; when given, restricts to that category
    let platform: String // platform ID; when given, restricts to that platform
    let region: String // region ID; when given, restricts to that region
    let emulated: Bool // when 1, yes or true, only games run on emulator will be returned
    let status: String // filters by run status; new, verified and rejected are possible values for this parameter
}
