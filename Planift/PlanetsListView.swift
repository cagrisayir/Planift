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

            VStack {
                Text("THE PLANETS")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .bold()

                ForEach(planets, id: \.name) { planet in
                    NavigationLink {
                        // MARK: TODO:
                    } label: {
                        SingleListElement(image: planet.images.planet.removeAssetPath(), name: planet.name)
                    }
                }
            }
        }
    }
}

#Preview {
    PlanetsListView()
}
