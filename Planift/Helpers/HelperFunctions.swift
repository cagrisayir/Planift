//
//  ImageNameHelper.swift
//  Planift
//
//  Created by Omer Cagri Sayir on 18.01.2024.
//

import Foundation

extension String {
    func removeAssetPath() -> String {
        return replacingOccurrences(of: "./assets/", with: "")
    }
}
