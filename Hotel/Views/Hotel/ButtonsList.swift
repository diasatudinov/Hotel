//
//  ButtonsList.swift
//  Hotel
//
//  Created by Atudinov Dias on 06.09.2023.
//

import SwiftUI

struct ButtonsList: View {
    let buttonViews = [ButtonModel(text: "Удобства", imageString: "emoji-happy"),ButtonModel(text: "Что включено", imageString: "tick-square"),ButtonModel(text: "Что не включено", imageString: "close-square")]
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(buttonViews, id: \.self) { button in
                button
                
            }
        }
    }
}
struct ButtonModel: View, Hashable {
    let text: String
    let imageString: String
    var body: some View {
        Button {
            //
        } label: {
            HStack{
                Image("\(imageString)").padding(.leading,12)
                VStack(alignment: .leading){
                    Text("\(text)")
                        .font(
                            Font.custom("SF Pro Display", size: 16)
                                .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.17, green: 0.19, blue: 0.21))
                    Text("Самое необходимое")
                        .font(Font.custom("SF Pro Display", size: 14).weight(.medium))
                        .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                }
                .padding(12)
                Spacer()
                Image("Arrow")
                    .padding(12)
            }
        }
        
        
    }
}

struct ButtonsList_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsList()
    }
}
