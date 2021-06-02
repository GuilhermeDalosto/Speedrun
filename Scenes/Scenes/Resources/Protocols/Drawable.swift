//
//  Drawable.swift
//  Scenes
//
//  Created by Guilherme Martins Dalosto de Oliveira on 01/06/21.
//

import Foundation

protocol Drawable {
    func setupHierarchy()
    func setupStyle()
    func setupConstraints()
    func setupAdditionalConfig()
}

extension Drawable {
    func makeDraw() {
        setupHierarchy()
        setupStyle()
        setupConstraints()
        setupAdditionalConfig()
    }
}
