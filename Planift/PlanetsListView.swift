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
                .scaledToFill()
                .ignoresSafeArea()

            VStack {
                ForEach(planets, id: \.name) { planet in
                    Text("\(planet.name)").foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    PlanetsListView()
}
