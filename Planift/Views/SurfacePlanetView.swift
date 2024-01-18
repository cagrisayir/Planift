//
//  SurfacePlanetView.swift
//  Planift
//
//  Created by Omer Cagri Sayir on 18.01.2024.
//

import SwiftUI

struct SurfacePlanetView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ZStack {
            Color("mydark").ignoresSafeArea()

            VStack(alignment: .leading) {
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

                ScrollView {
                }
            }
        }
    }
}

#Preview {
    SurfacePlanetView()
}
