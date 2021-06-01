//
//  NetworkRouter.swift
//  Network
//
//  Created by Guilherme Martins Dalosto de Oliveira on 01/06/21.
//

import Foundation

private struct NetworkRouter {
    
    enum Entity {
        case Run
    }
    
    enum Method {
        case get(id: String?)
        
        var rawValue: String {
            switch self {
            case .get:
                return "GET"
            }
        }
    }
    
    var entity: Entity
    var method: Method
    var url: Address
    
}

extension NetworkRouter {
    
    var idPath: String {
        switch self.method {
        case .get(let id):
            return "\(String(describing: id))"
        }
    }
    
    var completePath: String {
        return "\(url.path)/\(entity)/\(idPath)"
    }
    
}
