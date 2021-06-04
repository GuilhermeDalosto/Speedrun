//
//  ViewProtocol.swift
//  Scenes
//
//  Created by Guilherme Martins Dalosto de Oliveira on 02/06/21.
//

import Foundation

protocol ViewProtocol {
    associatedtype Presenter: PresenterProtocol
    
    var presenter: Presenter! { get }
    
    func bindUI()
}
