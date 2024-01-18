//
//  Planet.swift
//  Planift
//
//  Created by Omer Cagri Sayir on 18.01.2024.
//

import Foundation

struct Planet: Codable {
    var name: String
    var overview: Subcontent
    var structure: Subcontent
    var geology: Subcontent
    var rotation: String
    var revolution: String
    var radius: String
    var temperature: String
    var images: Images

    struct Subcontent: Codable {
        var content: String
        var source: String
    }

    struct Images: Codable {
        var planet: String
        var `internal`: String
        var geology: String
    }
}
