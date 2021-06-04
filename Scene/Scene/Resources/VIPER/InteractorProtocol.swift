//
//  InteractorProtocol.swift
//  Scenes
//
//  Created by Guilherme Martins Dalosto de Oliveira on 02/06/21.
//

import Storage
import Foundation

protocol InteractorProtocol {
    associatedtype Model
    associatedtype Provider: ProviderProtocol
    var provider: Provider { get set }
}
