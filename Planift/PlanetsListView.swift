//
//  ContentView.swift
//  Planift
//
//  Created by Omer Cagri Sayir on 17.01.2024.
//

import SwiftUI

struct PlanetsListView: View {
    var body: some View {
        ZStack {
            Color("mydark")
                .ignoresSafeArea()
            Image("background-stars")
        }
        .padding()
    }
}

#Preview {
    PlanetsListView()
}
