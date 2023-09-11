//
//  TouristExpandedView.swift
//  Hotel
//
//  Created by Atudinov Dias on 09.09.2023.
//

import SwiftUI

struct TouristExpandedView: View {
    @ObservedObject var viewModel: ViewModel
    var name: String = ""
    var surname: String = ""
    var date: String = ""
    var citizenship: String = ""
    var passportNumber: String = ""
    var passportValidityPeriod: String = ""
    
    var body: some View {
        VStack(spacing: 10){
            VStack(alignment: .leading){
                if viewModel.name == ""{
                    Text("Имя").hidden()
                } else {
                    Text("Имя")
                        .font(Font.custom("SF Pro Display", size: 12))
                        .kerning(0.12)
                        .foregroundColor(Color(red: 0.66, green: 0.67, blue: 0.72))
                }
                TextField("Имя", text: $viewModel.name).background(viewModel.isFull ? Color(.white) : Color(red: 235.0/255.0, green: 87.0/255.0, blue: 87.0/255.0).opacity(0.15))
            }
            
            VStack(alignment: .leading){
                if viewModel.surname == ""{
                    Text("Фамилия").hidden()
                } else {
                    Text("Фамилия")
                        .font(Font.custom("SF Pro Display", size: 12))
                        .kerning(0.12)
                        .foregroundColor(Color(red: 0.66, green: 0.67, blue: 0.72))
                }
                TextField("Фамилия", text: $viewModel.surname)
                    .background(viewModel.isFull ? Color(.white) : Color(red: 235.0/255.0, green: 87.0/255.0, blue: 87.0/255.0).opacity(0.15))
            }
            
            VStack(alignment: .leading){
                if viewModel.date == ""{
                    Text("Дата рождения").hidden()
                } else {
                    Text("Дата рождения")
                        .font(Font.custom("SF Pro Display", size: 12))
                        .kerning(0.12)
                        .foregroundColor(Color(red: 0.66, green: 0.67, blue: 0.72))
                }
                TextField("Дата рождения", text: $viewModel.date)
                    .background(viewModel.isFull ? Color(.white) : Color(red: 235.0/255.0, green: 87.0/255.0, blue: 87.0/255.0).opacity(0.15))
            }
            
            VStack(alignment: .leading){
                if viewModel.citizenship == ""{
                    Text("Гражданство").hidden()
                } else {
                    Text("Гражданство")
                        .font(Font.custom("SF Pro Display", size: 12))
                        .kerning(0.12)
                        .foregroundColor(Color(red: 0.66, green: 0.67, blue: 0.72))
                }
                TextField("Гражданство", text: $viewModel.citizenship)
                    .background(viewModel.isFull ? Color(.white) : Color(red: 235.0/255.0, green: 87.0/255.0, blue: 87.0/255.0).opacity(0.15))
            }
            
            VStack(alignment: .leading){
                if viewModel.passportNumber == ""{
                    Text("Номер загранпаспорта").hidden()
                } else {
                    Text("Номер загранпаспорта")
                        .font(Font.custom("SF Pro Display", size: 12))
                        .kerning(0.12)
                        .foregroundColor(Color(red: 0.66, green: 0.67, blue: 0.72))
                }
                TextField("Номер загранпаспорта", text: $viewModel.passportNumber)
                    .background(viewModel.isFull ? Color(.white) : Color(red: 235.0/255.0, green: 87.0/255.0, blue: 87.0/255.0).opacity(0.15))
            }
            
            VStack(alignment: .leading){
                if viewModel.passportValidityPeriod == ""{
                    Text("Срок действия загранпаспорта").hidden()
                } else {
                    Text("Срок действия загранпаспорта")
                        .font(Font.custom("SF Pro Display", size: 12))
                        .kerning(0.12)
                        .foregroundColor(Color(red: 0.66, green: 0.67, blue: 0.72))
                }
                TextField("Срок действия загранпаспорта", text: $viewModel.passportValidityPeriod)
                    .background(viewModel.isFull ? Color(.white) : Color(red: 235.0/255.0, green: 87.0/255.0, blue: 87.0/255.0).opacity(0.15))
            }
        }
    }
    
    
}

struct TouristExpandedView_Previews: PreviewProvider {
    static var previews: some View {
        TouristExpandedView(viewModel: ViewModel())
    }
}
