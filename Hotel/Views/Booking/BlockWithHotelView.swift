//
//  BlockWithHotelView.swift
//  Hotel
//
//  Created by Atudinov Dias on 06.09.2023.
//

import SwiftUI

struct BlockWithHotelView: View {
    let rating: Int
    let ratingName: String
    let name: String
    let address: String
    var body: some View {
        HStack{
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
                        .foregroundColor(Color(red: 0.05, green: 0.45, blue: 1))
                }
            }
            Spacer()
        }
    }
}

struct BlockWithHotelView_Previews: PreviewProvider {
    static var previews: some View {
        BlockWithHotelView(rating: 5, ratingName: "Превосходно", name: "Лучший пятизвездочный отель в Хургаде, Египет", address: "Madinat Makadi, Safaga Road, Makadi Bay, Египет")
    }
}
