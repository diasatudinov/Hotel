//
//  BlockWithFinalPriceView.swift
//  Hotel
//
//  Created by Atudinov Dias on 10.09.2023.
//

import SwiftUI

struct BlockWithFinalPriceView: View {
    let tourPrice: Int
    let fuelSurchargePrice: Int
    let serviceFeePrice: Int
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack{
                Text("Тур")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                Spacer()
                Text("\(tourPrice) ₽")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(.black)
            }
            HStack{
                Text("Топливный сбор")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                Spacer()
                Text("\(fuelSurchargePrice) ₽")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(.black)
            }
            HStack{
                Text("Сервисный сбор")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                Spacer()
                Text("\(serviceFeePrice) ₽")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(.black)
            }
            HStack{
                Text("К оплате")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                Spacer()
                Text("\(tourPrice+fuelSurchargePrice+serviceFeePrice) ₽")
                    .font(Font.custom("SF Pro Display", size: 16)
                        .weight(.semibold))
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(Color(red: 0.05, green: 0.45, blue: 1))
            }  
        }
    }
}

struct BlockWithFinalPriceView_Previews: PreviewProvider {
    static var previews: some View {
        BlockWithFinalPriceView(tourPrice: 186600, fuelSurchargePrice: 9300, serviceFeePrice: 2136)
    }
}
