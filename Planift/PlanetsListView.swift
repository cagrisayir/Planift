//
//  ContentView.swift
//  Planift
//
//  Created by Omer Cagri Sayir on 17.01.2024.
//

import SwiftUI

struct PlanetsListView: View {
    var planets: [Planet] = Bundle.main.decode("data.json")

    var body: some View {
        ZStack {
            Color("mydark")
                .ignoresSafeArea()
            Image("background-stars")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()

            VStack(alignment: .leading) {
                Text("THE PLANETS")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .bold()

                ForEach(planets, id: \.name) { planet in
                    NavigationLink {
                        PlanetNavigationView(planet: planet)
                    } label: {
                        SingleListElement(image: planet.images.planet.removeAssetPath(), name: planet.name)
                    }
                }
            }.padding()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    PlanetsListView()
}
