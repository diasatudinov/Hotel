//
//  SwiftUIView.swift
//  Hotel
//
//  Created by Atudinov Dias on 06.09.2023.
//

import SwiftUI

struct RoomView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        ScrollView{
            ForEach(viewModel.rooms.rooms, id: \.self){ room in
                VStack(alignment: .leading){
                    CarouselView(urls: room.imageUrls)
                        .frame(height: 300)
                        .cornerRadius(15)
                        .padding(.bottom,8)
                    BlockWithRoomView(roomName: room.name, roomPrice: room.price, pricePer: room.pricePer, peculiarities: room.peculiarities)
                        .padding(.bottom,8).padding(.horizontal,16)
                }.padding(.vertical,16).background(Color.white).cornerRadius(15)
            }.background(Color(red: 0.96, green: 0.96, blue: 0.98)).onAppear {
                viewModel.roomFetch()
                viewModel.hotelFetch()
            }
        }.navigationBarTitle("\(viewModel.hotels.name)",displayMode: .inline)
    }
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView()
    }
}
