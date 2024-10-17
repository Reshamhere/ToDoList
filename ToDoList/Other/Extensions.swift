//
//  Extensions.swift
//  ToDoList
//
//  Created by Resham on 17/10/24.
//

import Foundation

extension Encodable {
    func asDictionary() -> [String: Any] {
//        give me data from the current thing that is codable
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
