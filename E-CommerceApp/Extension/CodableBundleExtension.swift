//
//  CodableBundleExtension.swift
//  E-CommerceApp
//
//  Created by Jason Prosia on 14/06/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. locate json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("fail to locate \(file) in bundle")
        }
        
        // 2. create a property data
        guard let data = try? Data(contentsOf: url) else{
            fatalError("failed to load \(file) from bundle")
        }
        
        // 3. create decoder
        let decoder = JSONDecoder()
        
        // 4. create property for decode data
        guard let loaded = try? decoder.decode(T.self, from: data) else{
            fatalError("failed to decode \(file) from bundle")
        }
        // 5. return data
        return loaded
    }
}
