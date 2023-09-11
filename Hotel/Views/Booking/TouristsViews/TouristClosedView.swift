//
//  TouristClosedView.swift
//  Hotel
//
//  Created by Atudinov Dias on 09.09.2023.
//

import SwiftUI

struct TouristClosedView: View {
    var count: String = ""
    @State var rotationAngle: Double = 0.0
    var body: some View {
        HStack{
            Text("\(count) турист ")
                .font(
                    Font.custom("SF Pro Display", size: 22)
                        .weight(.medium)
                )
                .foregroundColor(.black)
            Spacer()
            ZStack{
                Rectangle()
                    .frame(width: 32.00001, height: 32.00001, alignment: .center)
                    .foregroundColor(Color(red: 0.4627, green: 0.8392, blue: 1.0).opacity(0.1))
                    .cornerRadius(6)
                Image("ArrowUp")
                    .rotationEffect(.degrees(rotationAngle))
            }
        }
    }
}

struct TouristClosedView_Previews: PreviewProvider {
    static var previews: some View {
        TouristClosedView(count: "Первый", rotationAngle: 0.0)
    }
}
