//
//  BookingDataView.swift
//  Hotel
//
//  Created by Atudinov Dias on 06.09.2023.
//

import SwiftUI

struct BookingDataView: View {
    let departure: String
    let arrivalCountry: String
    let tourDateStart: String
    let tourDateStop: String
    let nights: Int
    let hotelName: String
    let room: String
    let nutrition: String
    var body: some View {
        VStack(spacing: 16){
            LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())], alignment: .leading, spacing: 16) {
                Text("Вылет из")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                Text("\(departure)")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(.black)
                Text("Страна, город")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                Text("\(arrivalCountry)")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(.black)
                Text("Даты")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                Text("\(tourDateStart) - \(tourDateStop)")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(.black)
                
            }
            LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())], alignment: .leading, spacing: 16) {
                Text("Кол-во ночей")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                Text("\(nights) ночей")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(.black)
                Text("Отель")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                Text("\(hotelName)")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(.black)
                Text("Номер")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                Text("\(room)")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(.black)
                Text("Питание")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                Text("\(nutrition)")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(.black)
            }
        }
    }
}

struct BookingDataView_Previews: PreviewProvider {
    static var previews: some View {
        BookingDataView(departure: "Москва", arrivalCountry: "Египет, Хургада", tourDateStart: "19.09.2023", tourDateStop: "27.09.2023", nights: 7, hotelName: "Лучший пятизвездочный отель в Хургаде, Египет", room: "Люкс номер с видом на море", nutrition: "Все включено")
    }
}
