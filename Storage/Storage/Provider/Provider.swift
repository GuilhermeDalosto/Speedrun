//
//  Provider.swift
//  Storage
//
//  Created by Guilherme Martins Dalosto de Oliveira on 04/06/21.
//

import Foundation

public protocol ProviderProtocol {
    associatedtype `Type`
    var request: Type { get }
    var data: Data { get }
}
