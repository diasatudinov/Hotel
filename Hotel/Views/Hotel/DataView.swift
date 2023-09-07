//
//  DataView.swift
//  Hotel
//
//  Created by Atudinov Dias on 05.09.2023.
//

import SwiftUI

struct DataView: View {
    let rating: Int
    let ratingName: String
    let name: String
    let address: String
    let minimalPrice: Int
    let priceForIt: String
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            ZStack{
                Rectangle()
                    .frame(width: 149, height: 29)
                    .foregroundColor(Color(red: 1, green: 0.78, blue: 0).opacity(0.2))
                    .cornerRadius(5)
                HStack{
                    Image("Star")
                    Text("\(rating)")
                        .font(Font.custom("SF Pro Display", size:16).weight(.medium))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 1, green: 0.66, blue: 0))
                    Text("\(ratingName)")
                        .font(Font.custom("SF Pro Display", size:16).weight(.medium))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 1, green:0.66, blue: 0))
                }
                
            }
            Text("\(name)")
                .font(Font.custom("SF Pro Display", size: 22)
                .weight(.medium))
                .foregroundColor(.black)
            Button {
                //
            } label: {
                Text("\(address)")
                    .font(Font.custom("SF Pro Display", size: 14).weight(.medium))
                    .foregroundColor(Color(red: 0.05, green: 0.45,blue: 1))
            }
            HStack{
                Text("от \(minimalPrice) ₽")
                    .font(Font.custom("SF Pro Display", size: 30)
                        .weight(.bold))
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                Text("\(priceForIt)")
                  .font(Font.custom("SF Pro Display", size: 16))
                  .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                  .padding(.bottom, -9)
            }
            Spacer()
        }
    }
}

struct DataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView(rating: 5, ratingName: "Превосходно", name: "Лучший пятизвездочный отель в Хургаде, Египет", address: "Madinat Makadi, Safaga Road, Makadi Bay, Египет", minimalPrice: 134268, priceForIt: "За тур с перелётом")
    }
}
