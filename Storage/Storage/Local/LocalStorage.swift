//
//  LocalStorage.swift
//  Storage
//
//  Created by Guilherme Martins Dalosto de Oliveira on 01/06/21.
//

import Foundation

struct LocalStorage {
    
    var userDefaults: UserDefaults {
        return .standard
    }
    
    var initial: Bool {
        get {
            return userDefaults.bool(forKey: LocalStorageKeys.initial)
        }
        set {
            userDefaults.set(newValue, forKey: LocalStorageKeys.initial)
        }
    }
    func erase() {
        userDefaults.removeObject(forKey: LocalStorageKeys.initial)
    }
}


