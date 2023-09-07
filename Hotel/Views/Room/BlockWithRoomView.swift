//
//  BlockWithRoomView.swift
//  Hotel
//
//  Created by Atudinov Dias on 06.09.2023.
//

import SwiftUI

struct BlockWithRoomView: View {
    let roomName: String
    let roomPrice: Int
    let pricePer: String
    let peculiarities: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 13){
            Text("\(roomName)")
                .font(Font.custom("SF Pro Display", size: 22)
                .weight(.medium))
                .foregroundColor(.black)
            HStack{
                ForEach(peculiarities, id: \.self){ text in
                    Text("\(text)")
                    .font(
                    Font.custom("SF Pro Display", size: 16)
                    .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                }
               
            }.padding(.horizontal, 10)
            Button {
                //
            } label: {
                ZStack(alignment: .leading){
                    Rectangle()
                        .frame(width: 172,height: 29 , alignment: .leading)
                        .background(Color(red: 0.05, green: 0.45, blue: 1).opacity(0.1))
                        .cornerRadius(5)
                        .opacity(0.1)
                        
                    HStack{
                        Text("Подробнее о номере")
                            .font(Font.custom("SF Pro Display", size: 14).weight(.medium))
                            .foregroundColor(Color(red: 0.05, green: 0.45, blue: 1))
                        Image("blueArrow")
                        Spacer()
                    }.padding(.horizontal, 10)
                }

            }
            HStack{
                Text("\(roomPrice) ₽")
                    .font(Font.custom("SF Pro Display", size: 30)
                        .weight(.bold))
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                Text("\(pricePer)")
                  .font(Font.custom("SF Pro Display", size: 16))
                  .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                  .padding(.bottom, -9)
            }
            NavigationLink {
                BookingView()
            } label: {
                ZStack{
                    Rectangle()
                        .frame(height: 48)
                        .background(Color(UIColor.systemBlue))
                        .cornerRadius(15)
                    Text("Выбрать номер")
                        .font(Font.custom("SF Pro Display", size: 16)
                                .weight(.medium))
                        .kerning(0.1)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct BlockWithRoomView_Previews: PreviewProvider {
    static var previews: some View {
        BlockWithRoomView(roomName: "Стандартный номер с видом на бассейн", roomPrice: 186600, pricePer: "За 7 ночей с перелетом", peculiarities: ["Включен только завтрак", "Кондиционер"])
    }
}
