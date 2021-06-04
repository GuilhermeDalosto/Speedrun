//
//  LoginPresenter.swift
//  Scenes
//
//  Created by Guilherme Martins Dalosto de Oliveira on 02/06/21.
//

import Foundation

class LoginPresenter: PresenterProtocol {
    typealias Interactor = LoginInteractor
    
    var interactor: Interactor
    
    init(){
        interactor = Interactor()
    }
    
    func setup() {}
}
