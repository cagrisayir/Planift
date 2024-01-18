//
//  SingleListElement.swift
//  Planift
//
//  Created by Omer Cagri Sayir on 18.01.2024.
//

import SwiftUI

struct SingleListElement: View {
    var color: Color = Color("blood")
    var name: String = "Mars"

    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Circle()
                    .foregroundStyle(color)
                    .frame(height: 25)

                Text(name)
                    .foregroundStyle(.white)
                    .font(.title2)
                    .bold()
                    .kerning(1.36364)
                    .padding(.leading, 25)
                Spacer()

                Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 4, height: 8)
                    .bold()
                    .foregroundStyle(.white)
            }
            Divider()
        }.padding()
            .background(.black)
    }
}

#Preview {
    SingleListElement()
}
