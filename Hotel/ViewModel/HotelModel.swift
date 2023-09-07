//
//  HotelModel.swift
//  Hotel
//
//  Created by Atudinov Dias on 05.09.2023.
//

import Foundation

class ViewModel: ObservableObject{
    
    @Published var hotels: Hotel = Hotel(id: 0000, name: "", adress: "", minimalPrice: 0000, priceForIt: "", rating: 0000, ratingName: "", imageUrls: ["","",""], aboutTheHotel: AboutHotel(description: "", peculiarities: ["","","",""]))
    @Published var rooms: Rooms = Rooms(rooms: [Room(id: 0000, name: "", price: 0000, pricePer: "", peculiarities: ["",""], imageUrls: ["","",""]), Room(id: 0000, name: "", price: 0000, pricePer: "", peculiarities: ["",""], imageUrls: ["","",""]) ])
    @Published var bookings: Booking = Booking(id: 0, hotelName: "", hotelAddress: "", horating: 0, ratingName: "", departure: "", arrivalCountry: "", tourDateStart: "", tourDateStop: "", numberOfNights: 0, room: "", nutrition: "", tourPrice: 0, fuelCharge: 0, serviceCharge: 0)
    
    func hotelFetch() {
        guard let url = URL(string: "https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            //Convert to JSON
            do{
                let hotels = try JSONDecoder().decode(Hotel.self, from: data)
                DispatchQueue.main.async {
                    self?.hotels = hotels
                }
            } catch {
                print(error)
            }
            
        }
        task.resume()
    }

    func roomFetch() {
        guard let url = URL(string: "https://run.mocky.io/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            //Convert to JSON
            do{
                let rooms = try JSONDecoder().decode(Rooms.self, from: data)
                DispatchQueue.main.async {
                    self?.rooms = rooms
                }
            } catch {
                print(error)
            }
            
        }
        task.resume()
    }
    
    func bookingFetch() {
        guard let url = URL(string: "https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            //Convert to JSON
            do{
                let bookings = try JSONDecoder().decode(Booking.self, from: data)
                DispatchQueue.main.async {
                    self?.bookings = bookings
                }
            } catch {
                print(error)
            }
            
        }
        task.resume()
    }
}
