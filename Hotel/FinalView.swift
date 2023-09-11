//
//  ContentView.swift
//  Hotel
//
//  Created by Atudinov Dias on 05.09.2023.
//

import SwiftUI

struct FinalView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        let hotel = viewModel.hotels
        NavigationView {
            ZStack{
                ScrollView{
                    VStack{
                        VStack{
                            CarouselView(urls:hotel.imageUrls)
                                .frame(height: 257)
                                .scaledToFit()
                            HStack{
                                DataView(rating: hotel.rating, ratingName: hotel.ratingName, name: hotel.name, address: hotel.adress, minimalPrice: hotel.minimalPrice, priceForIt: hotel.priceForIt)
                                Spacer()
                            }
                        }.padding(16).background(Color.white).cornerRadius(15)
                        
                        HotelDetailsView(peculiarities: hotel.aboutTheHotel.peculiarities, description: hotel.aboutTheHotel.description)
                            .padding(16).background(Color.white).cornerRadius(15)
                        Spacer()
                    }.padding(.bottom, 80).background(Color(red: 0.96, green: 0.96, blue: 0.98))
                        .onAppear {
                            viewModel.hotelFetch()
                        }
                }
                .navigationBarTitle("Отель", displayMode: .inline)
                VStack{
                    Spacer()
                    NavigationLink {
                        RoomView()
                    } label: {
                        ButtonView()
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
        
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView()
    }
}
