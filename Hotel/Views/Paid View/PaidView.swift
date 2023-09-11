//
//  PaidView.swift
//  Hotel
//
//  Created by Atudinov Dias on 10.09.2023.
//

import SwiftUI

struct PaidView: View {
    var body: some View {
        ZStack{
            VStack{
                Image("party")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 44, height: 44)
                    .clipped()
                    .padding(57)
                Text("Ваш заказ принят в работу")
                    .font(
                        Font.custom("SF Pro Display", size: 22)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                Text("Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                    .padding(20)
                
            }
            VStack{
                Spacer()
                NavigationLink {
                    FinalView()
                } label: {
                    PaidButtonView()
                }

            }
        }.navigationBarTitle("Заказ оплачен",displayMode: .inline)
    }
}

struct PaidView_Previews: PreviewProvider {
    static var previews: some View {
        PaidView()
    }
}
