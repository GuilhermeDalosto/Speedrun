//
//  UIView+Constraints.swift
//  Scenes
//
//  Created by Guilherme Martins Dalosto de Oliveira on 01/06/21.
//

import UIKit

extension UIView {
    
    func setupConstraints(_ activate: (UIView) -> [NSLayoutConstraint]) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(activate(self))
    }
    
    func roundView() {
        layer.cornerRadius = frame.height / 2
        clipsToBounds = true
    }
}
