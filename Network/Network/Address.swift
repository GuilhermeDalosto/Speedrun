//
//  Address.swift
//  Network
//
//  Created by Guilherme Martins Dalosto de Oliveira on 01/06/21.
//

import Foundation

enum Address {
    
    case weblink
    
    var path: String {
        switch self {
        case .weblink:
            return "https://www.speedrun.com/api/v1/"
        }
    }
    
}
