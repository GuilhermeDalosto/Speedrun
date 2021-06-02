//
//  Serialization.swift
//  Network
//
//  Created by Guilherme Martins Dalosto de Oliveira on 01/06/21.
//

import Foundation

struct Serialization {
    
    func convertToData<Value>(value: Value) -> Data? where Value: Codable {
        do {
            return try JSONEncoder().encode(value)
        } catch(let error) {
            return nil
        }
    }
    
    func decodeData<ValueType>(value: Data) -> ValueType? where ValueType: Decodable {
        do {
            let data = try JSONDecoder().decode(ValueType.self, from: value)
            return data
        } catch(let error) {
            return nil
        }
    }
    
    
    
}
