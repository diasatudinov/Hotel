//
//  TouristView.swift
//  Hotel
//
//  Created by Atudinov Dias on 07.09.2023.
//

import SwiftUI

struct TouristView: View {
    @State var tourists:[Tourist] = [Tourist(count: "Первый", name: "")]
    @ObservedObject var viewModel: ViewModel
    @State var indexx: Int = 2
    @State private var isRotated = false
    @State var name: String = ""
    
    
    var body: some View {
        VStack{
            ForEach(tourists, id: \.self) { tourist in
                DisclosureGroup {
                    TouristExpandedView(viewModel: viewModel).padding(.leading,16).padding(.bottom,16)
                } label: {
                    TouristClosedView(count: tourist.count)
                }.buttonStyle(PlainButtonStyle()).accentColor(.clear).disabled(false)
            }
            
            HStack{
                Text("Добавить туриста")
                  .font(
                    Font.custom("SF Pro Display", size: 22)
                      .weight(.medium)
                  )
                  .foregroundColor(.black)
                Spacer()
                Button {
                    addTourist()
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 32.00001, height: 32.00001)
                            .background(Color(red: 0.05, green: 0.45, blue: 1))
                            .cornerRadius(6)
                        Image(systemName: "plus")
                            .foregroundColor(Color.white)
                    }
                }
            }.padding(.trailing, 18)
        }
    }
    
    func addTourist(){
        let tourist = Tourist(count: "\(ordinalNumber(indexx))", name: name)
        tourists.append(tourist)
        indexx += 1
    }
    
    func ordinalNumber(_ number: Int) -> String {
        switch number {
        case 2:
            return "Второй"
        case 3:
            return "Третий"
        case 4:
            return "Четвертый"
        case 5:
            return "Пятый"
        default:
            return "\(number)-й"
        }
    }
}

struct TouristView_Previews: PreviewProvider {
    static var previews: some View {
        TouristView(viewModel: ViewModel(), name: "")
    }
}
