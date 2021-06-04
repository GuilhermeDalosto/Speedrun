//
//  UsersProvider.swift
//  Storage
//
//  Created by Guilherme Martins Dalosto de Oliveira on 04/06/21.
//

import Foundation

public struct UsersProvider: ProviderProtocol {
    
    public enum Types {
        case getUsers
    }

    public var request: Types
    
    public init(type: Types){
        self.request = type
    }
    
}

extension UsersProvider {
    public var data: Data {
        switch request {
        case .getUsers:
            return Bundle.loadJSONFromBundle(resourceName: "Users")
        }
    }
}
