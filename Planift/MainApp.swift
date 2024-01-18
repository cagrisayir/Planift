//
//  PlaniftApp.swift
//  Planift
//
//  Created by Omer Cagri Sayir on 17.01.2024.
//

import SwiftUI

@main
struct MainApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                PlanetsListView()
            }
        }
    }
}
