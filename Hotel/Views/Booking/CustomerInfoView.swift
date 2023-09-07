//
//  CustomerInfoView.swift
//  Hotel
//
//  Created by Atudinov Dias on 07.09.2023.
//

import SwiftUI
import iPhoneNumberField

struct CustomerInfoView: View {
    @State private var enteredPhoneNumber = ""
    @State private var email = ""
    @State private var isEmailValid = false
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Информация о покупателе")
                .font(
                    Font.custom("SF Pro Display", size: 22)
                        .weight(.medium)
                )
                .foregroundColor(.black)
                .padding(.bottom, 20)
            ZStack(alignment: .leading){
                Rectangle()
                    .frame(height: 52)
                    .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.98))
                    .cornerRadius(15)
                VStack(alignment: .leading){
                    Text("Номер телефона")
                        .font(Font.custom("SF Pro Display", size: 12))
                        .kerning(0.12)
                        .foregroundColor(Color(red: 0.66, green: 0.67, blue: 0.72))
                    iPhoneNumberField("(XXX) XXX-XX-XX", text: $enteredPhoneNumber)
                        .flagHidden(false)
                        .flagSelectable(true)
                        .clearButtonMode(.whileEditing)
                        .prefixHidden(false)
                        .maximumDigits(10)
                }.padding(.horizontal, 16)
                
            }.padding(.bottom,8)
            ZStack(alignment: .leading){
                Rectangle()
                    .frame(height: 52)
                    .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.98))
                    .cornerRadius(15)
                VStack(alignment: .leading){
                    Text("Номер телефона")
                        .font(Font.custom("SF Pro Display", size: 12))
                        .kerning(0.12)
                        .foregroundColor(Color(red: 0.66, green: 0.67, blue: 0.72))
                    TextField("Введите адрес электронной почты", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .cornerRadius(5)
                }.padding(.horizontal, 16)
            }
            Text("Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту")
            .font(Font.custom("SF Pro Display", size: 14))
            .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))

        }.padding(.bottom,8)
    }
}



struct CustomerInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CustomerInfoView()
    }
}

