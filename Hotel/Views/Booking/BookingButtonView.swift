//
//  BookingButtonView.swift
//  Hotel
//
//  Created by Atudinov Dias on 10.09.2023.
//

import SwiftUI

struct BookingButtonView: View {
    let price: Int
    var body: some View {
            ZStack{
                Rectangle()
                    .frame(height: 48)
                    .background(Color(red: 0.05, green: 0.45, blue: 1))
                    .cornerRadius(15)
                Text("Оплатить \(price) ₽")
                    .font(Font.custom("SF Pro Display", size: 16)
                            .weight(.medium))
                    .kerning(0.1)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
            }.padding(.horizontal,16)
    }
}

struct BookingButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BookingButtonView(price: 300000)
    }
}
