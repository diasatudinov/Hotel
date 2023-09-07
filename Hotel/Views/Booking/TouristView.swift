//
//  TouristView.swift
//  Hotel
//
//  Created by Atudinov Dias on 07.09.2023.
//

import SwiftUI

struct TouristView: View {
    @State var tourists:[Tourist] = [Tourist()]
    @State var indexx: Int = 0
    @State private var isRotated = false
    var body: some View {
        VStack{
            ForEach(tourists, id: \.self) { tourist in
                DisclosureGroup {
                    Text("AAAAAAAA")
                } label: {
                    HStack{
                        Text("Первый турист ")
                            .font(
                                Font.custom("SF Pro Display", size: 22)
                                    .weight(.medium)
                            )
                            .foregroundColor(.black)
                        Spacer()
                        ZStack{
                            Rectangle()
                                .frame(width: 32.00001, height: 32.00001, alignment: .center)
                                .foregroundColor(Color(red: 0.4627, green: 0.8392, blue: 1.0).opacity(0.1))
                                .cornerRadius(6)
                            Image("ArrowUp")
                        }
                    }
                }
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
                    tourists.append(Tourist())
                    indexx += 1
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 24, height: 24)
                        Image(systemName: "plus")
                            .foregroundColor(Color.white)
                    }
                }
            }
            Button {
                tourists.append(Tourist())
                indexx += 1
            } label: {
                ZStack{
                    Rectangle()
                        .frame(width: 24, height: 24)
                    Image(systemName: "plus")
                        .foregroundColor(Color.white)
                }
            }
        }
        

    }
}

struct Tourist: Hashable{
    
}
struct TouristView_Previews: PreviewProvider {
    static var previews: some View {
        TouristView()
    }
}
