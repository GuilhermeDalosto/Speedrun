//
//  PresenterProtocol.swift
//  Scenes
//
//  Created by Guilherme Martins Dalosto de Oliveira on 02/06/21.
//

import Foundation

protocol PresenterProtocol {
    associatedtype Interactor: InteractorProtocol
    
    var interactor: Interactor { get }
    
    func setup()
}

extension PresenterProtocol {
    func setup<Input>(with input: Input) {}
}
