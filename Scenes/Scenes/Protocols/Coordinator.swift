//
//  Coordinator.swift
//  Scenes
//
//  Created by Guilherme Martins Dalosto de Oliveira on 01/06/21.
//

import UIKit

protocol Coordinator: class {    
    var childCoordinators: [Coordinator] { get set }
    func setup()
}

extension Coordinator {
    func removeCoordinator(_ coordinator: Coordinator) {
        childCoordinators.removeAll(where: {$0 === coordinator })
    }
}
