//
//  BookingView.swift
//  Hotel
//
//  Created by Atudinov Dias on 06.09.2023.
//

import SwiftUI

struct BookingView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        ScrollView{
            VStack(spacing: 8){
                let hotel = viewModel.hotels
                let booking = viewModel.bookings
                BlockWithHotelView(rating: hotel.rating, ratingName: hotel.ratingName, name: hotel.name, address: hotel.adress).padding(16).background(Color.white).cornerRadius(15)
                BookingDataView(departure: booking.departure, arrivalCountry: booking.arrivalCountry, tourDateStart: booking.tourDateStart, tourDateStop: booking.tourDateStop, nights: booking.numberOfNights, hotelName: booking.hotelName, room: booking.room, nutrition: booking.nutrition).padding(16).background(Color.white).cornerRadius(15)
                    CustomerInfoView().padding(16).background(Color.white).cornerRadius(15).padding(.bottom,10)
            }.background(Color(red: 0.96, green: 0.96, blue: 0.98))
        }.navigationBarTitle("Бронирование",displayMode: .inline)
        .onAppear {
            viewModel.roomFetch()
            viewModel.hotelFetch()
            viewModel.bookingFetch()
        }
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
