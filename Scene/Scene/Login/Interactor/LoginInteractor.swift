//
//  LoginInteractor.swift
//  Scenes
//
//  Created by Guilherme Martins Dalosto de Oliveira on 02/06/21.
//

import Model
import Storage
import Foundation


class LoginInteractor: InteractorProtocol {
    typealias Model = User
    typealias Provider = UsersProvider
    
    var provider: Provider
    
    init(provider: Provider) {
        self.provider = provider
    }
    
    convenience init() {
        self.init(provider: Provider(type: .getUsers))
    }
    
}
