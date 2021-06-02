//
//  AppCoordinator.swift
//  Scenes
//
//  Created by Guilherme Martins Dalosto de Oliveira on 01/06/21.
//

import UIKit

class AppCoordinator: Coordinator {
            
    let window: UIWindow
    
    var childCoordinators: [Coordinator] = []
    
    var currentView: UIViewController? {
        get {
            return window.rootViewController
        }
        set {
            UIView.transition(with: window, duration: 1, options: .transitionCrossDissolve,animations: { [self] in
                window.rootViewController = newValue
            })
        }
    }
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func setup() {
        // check initial
    }
}
