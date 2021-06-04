//
//  URL.swift
//  Scenes
//
//  Created by Guilherme Martins Dalosto de Oliveira on 01/06/21.
//

import UIKit

extension URL {
    func openInDefaultBrowser() {
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(self, options: [:])
        } else {
            UIApplication.shared.openURL(self)
        }
    }
}
