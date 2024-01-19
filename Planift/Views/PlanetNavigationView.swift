//
//  PlanetNavigationView.swift
//  Planift
//
//  Created by Omer Cagri Sayir on 18.01.2024.
//

import SwiftUI

struct PlanetNavigationView: View {
    var planet: Planet
    var body: some View {
        TabView {
            // Overview
            OverviewPlanetView(planet: planet)
                .tabItem {
                    Text("Overview")
                        .foregroundStyle(.white)
                }

            // Structure
            StructurePlanetView(planet: planet)
                .tabItem {
                    Text("Structure")
                        .foregroundStyle(.white)
                }

            // Surface
            SurfacePlanetView()
                .tabItem {
                    Text("Surface")
                        .foregroundStyle(.white)
                }
        }
        .navigationBarBackButtonHidden()
        .ignoresSafeArea(.all)
    }
}
