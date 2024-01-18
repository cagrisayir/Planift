//
//  OverviewPlanetView.swift
//  Planift
//
//  Created by Omer Cagri Sayir on 18.01.2024.
//

import SwiftUI

struct OverviewPlanetView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.openURL) var openURL
    var planet: Planet

    var body: some View {
        ZStack {
            Color("mydark").ignoresSafeArea()
            Image("background-stars")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()

            VStack(alignment: .center) {
                HStack(alignment: .center) {
                    Text("PLANETS")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.white)

                    Spacer()
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "globe.badge.chevron.backward")
                            .font(.title)
                            .foregroundStyle(.white)
                    })
                }.padding(.horizontal, 25)
                Spacer()
                Image(planet.images.planet.removeAssetPath())
                    .resizable()
                    .frame(width: 111, height: 111)

                Spacer()
                VStack(alignment: .center, spacing: 0) {
                    Text(planet.name)
                        .font(.title)
                        .bold()
                        .foregroundStyle(.white)
                        .padding(.bottom, 16)

                    Text(planet.overview.content)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                        .font(.callout)
                        .padding(.bottom, 32)

                    Button("Source: Wikipedia") {
                        openURL(URL(string: planet.overview.source)!)
                    }
                    .foregroundStyle(.gray)
                    .font(.footnote)
                    .padding(.bottom, 28)

                    HStack(alignment: .center) {
                        Text("Rotation Time")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                            .bold()
                        Spacer()
                        Text(planet.rotation)
                            .font(.title3)
                            .bold()
                            .foregroundStyle(.white)
                    }
                    .padding()
                    .border(Color.gray)
                    .padding(.bottom, 8)

                    HStack(alignment: .center) {
                        Text("Revolution Time")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                            .bold()
                        Spacer()
                        Text(planet.revolution)
                            .font(.title3)
                            .bold()
                            .foregroundStyle(.white)
                    }
                    .padding()
                    .border(Color.gray)
                    .padding(.bottom, 8)

                    HStack(alignment: .center) {
                        Text("Radius")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                            .bold()
                        Spacer()
                        Text(planet.radius)
                            .font(.title3)
                            .bold()
                            .foregroundStyle(.white)
                    }
                    .padding()
                    .border(Color.gray)
                    .padding(.bottom, 8)

                    HStack(alignment: .center) {
                        Text("Average Temp.")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                            .bold()
                        Spacer()
                        Text(planet.temperature)
                            .font(.title3)
                            .bold()
                            .foregroundStyle(.white)
                    }
                    .padding()
                    .border(Color.gray)
                }
                .padding(25)
            }
        }
    }
}
