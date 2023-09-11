//
//  PaidButtonView.swift
//  Hotel
//
//  Created by Atudinov Dias on 11.09.2023.
//

import SwiftUI

struct PaidButtonView: View {
    var body: some View {
            ZStack{
                Rectangle()
                    .frame(height: 48)
                    .background(Color(red: 0.05, green: 0.45, blue: 1))
                    .cornerRadius(15)
                Text("Супер!")
                    .font(Font.custom("SF Pro Display", size: 16)
                            .weight(.medium))
                    .kerning(0.1)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
            }.padding(.horizontal,16)
    }
}

struct PaidButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PaidButtonView()
    }
}
