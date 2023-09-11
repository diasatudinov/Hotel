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
    @State private var isEmailValid = true
    
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
                        .onChange(of: email, perform: { newValue in
                            isEmailValid = isValidEmail(newValue)
                        })
                        .background(isEmailValid ? Color(red: 0.96, green: 0.96, blue: 0.98) : Color(red: 235.0/255.0, green: 87.0/255.0, blue: 87.0/255.0).opacity(0.15))
                }.padding(.horizontal, 16)
            }
            Text("Эти данные никому не передаются. После оплаты мы вышлим чек на указанный вами номер и почту")
            .font(Font.custom("SF Pro Display", size: 14))
            .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))

        }.padding(.bottom,8)
    }
    private func isValidEmail(_ email: String) -> Bool {
            let emailRegex = #"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"#
            let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegex)
            return emailPredicate.evaluate(with: email)
        }
}



struct CustomerInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CustomerInfoView()
    }
}

