//
//  ImageNameHelper.swift
//  Planift
//
//  Created by Omer Cagri Sayir on 18.01.2024.
//

import Foundation

extension String {
    func removeAssetPath() -> String {
        // Step 1: Remove "./assets/"
        let newPath = replacingOccurrences(of: "./assets/", with: "")

        // Step 2: Remove the last 4 characters
        let endIndex = newPath.index(newPath.endIndex, offsetBy: -4)
        let finalPath = newPath[newPath.startIndex ..< endIndex]

        return String(finalPath)
    }
}
