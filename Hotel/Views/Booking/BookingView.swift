//
//  BookingView.swift
//  Hotel
//
//  Created by Atudinov Dias on 06.09.2023.
//

import SwiftUI

struct BookingView: View {
    @StateObject var viewModel = ViewModel()
    @State private var isPaid = false
    @State private var shouldNavigate = false

    
    var body: some View {
        ScrollView{
            VStack(spacing: 8){
                let hotel = viewModel.hotels
                let booking = viewModel.bookings
                BlockWithHotelView(rating: hotel.rating, ratingName: hotel.ratingName, name: hotel.name, address: hotel.adress).padding(16).background(Color.white).cornerRadius(15)
                BookingDataView(departure: booking.departure, arrivalCountry: booking.arrivalCountry, tourDateStart: booking.tourDateStart, tourDateStop: booking.tourDateStop, nights: booking.numberOfNights, hotelName: booking.hotelName, room: booking.room, nutrition: booking.nutrition).padding(16).background(Color.white).cornerRadius(15)
                CustomerInfoView().padding([.leading,.trailing,.top], 16).background(Color.white).cornerRadius(15)//.padding(.bottom,10)
                TouristView(viewModel: viewModel).padding([.leading,.bottom], 16).background(Color.white).cornerRadius(15)
                BlockWithFinalPriceView(tourPrice: booking.tourPrice, fuelSurchargePrice: booking.fuelCharge, serviceFeePrice: booking.serviceCharge).padding(16).background(Color.white).cornerRadius(15)
                if shouldNavigate {
                    NavigationLink("", destination: PaidView(), isActive: $shouldNavigate)
                        .opacity(0)
                }
                
                Button {
                    if isValid(name: viewModel.name, surname: viewModel.surname, date: viewModel.date, citizenship: viewModel.citizenship, passportNumber: viewModel.passportNumber, passportValidityPeriod: viewModel.passportValidityPeriod) {
                        viewModel.isFull = true
                        shouldNavigate = true
                    } else {
                        viewModel.isFull = false
                    }
                } label: {
                    BookingButtonView(price: (booking.tourPrice+booking.fuelCharge+booking.serviceCharge))
                }
                
                
            }.background(Color(red: 0.96, green: 0.96, blue: 0.98))
        }.navigationBarTitle("Бронирование",displayMode: .inline)
            .onAppear {
                viewModel.roomFetch()
                viewModel.hotelFetch()
                viewModel.bookingFetch()
            }
    }
    func isValid(name: String, surname: String, date: String, citizenship: String, passportNumber: String, passportValidityPeriod:String) -> Bool{
        return !name.isEmpty && !surname.isEmpty && !date.isEmpty && !citizenship.isEmpty && !passportNumber.isEmpty && !passportValidityPeriod.isEmpty
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
