//
//  LocalizedString.swift
//  Scenes
//
//  Created by Guilherme Martins Dalosto de Oliveira on 02/06/21.
//

import Foundation

struct LocalizedString {
    var key: String
    
    init(_ key: String) {
        self.key = key
    }
    
    func resolve() -> String {
        NSLocalizedString(key, comment: "")
    }
}

extension LocalizedString: ExpressibleByStringLiteral {
    init(stringLiteral value: StringLiteralType) {
        key = value
    }
}

