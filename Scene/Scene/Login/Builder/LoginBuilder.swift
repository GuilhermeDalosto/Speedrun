//
//  LoginBuilder.swift
//  Scene
//
//  Created by Guilherme Martins Dalosto de Oliveira on 04/06/21.
//

import UIKit

struct LoginBuilder {
    static func build() -> UIViewController {
        let controller = LoginViewController()
        controller.view = LoginView()
        
        let presenter = LoginPresenter()
        presenter.interactor = LoginInteractor()
        
        controller.presenter = presenter
        controller.setupView()
        return controller
    }
}
