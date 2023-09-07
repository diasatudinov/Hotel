//
//  HotelDetailsView.swift
//  Hotel
//
//  Created by Atudinov Dias on 05.09.2023.
//

import SwiftUI

struct HotelDetailsView: View {
    let peculiarities:[String]
    let description: String
    var body: some View {
        VStack{
            VStack(spacing: 12){
                HStack{
                    Text("Об отеле")
                        .font(Font.custom("SF Pro Display", size: 22)
                            .weight(.medium))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())], alignment: .leading, spacing: 5) {
                    ForEach(peculiarities, id: \.self){ peculiarity in
                        HStack {
                            Text("\(peculiarity)")
                                .font(
                                    Font.custom("SF Pro Display", size: 16)
                                        .weight(.medium)
                                )
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                        }.padding(.vertical,2)
                    }
                }.padding(10)
                HStack{
                    Text(description)
                        .font(Font.custom("SF Pro Display", size: 16))
                        .foregroundColor(.black.opacity(0.9))
                    Spacer()
                }
            }
            ButtonsList()
        }
    }
}

struct HotelDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        HotelDetailsView(peculiarities: ["Бесплатный Wifi на всей территории отеля", "1 км до пляжа", "Бесплатный фитнес-клуб", "20 км до аэропорта"], description: "Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!")
    }
}
