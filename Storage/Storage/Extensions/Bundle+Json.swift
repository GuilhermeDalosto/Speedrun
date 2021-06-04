//
//  Bundle+Json.swift
//  Storage
//
//  Created by Guilherme Martins Dalosto de Oliveira on 04/06/21.
//

import Foundation

extension Bundle {
    static func loadJSONFromBundle(bundle: Bundle = Bundle.main, resourceName: String) -> Data {
        guard
            let url = bundle.url(forResource: resourceName, withExtension: "json"),
            let data = try? Data(contentsOf: url)
        else {
            return Data()
        }
        return data
    }
}
