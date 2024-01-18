//
//  Bundle-Decodable.swift
//  Planift
//
//  Created by Omer Cagri Sayir on 18.01.2024.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        let decoder = JSONDecoder()

        do {
            let decodedData = try decoder.decode(T.self, from: data)
            return decodedData
        } catch {
            fatalError("Failed to decode \(file) from bundle. Because: \(error)")
        }
    }
}
