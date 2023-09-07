//
//  modelBooking.swift
//  Hotel
//
//  Created by Atudinov Dias on 06.09.2023.
//

import Foundation

struct Booking: Hashable, Codable{
    var id: Int
    var hotelName: String
    var hotelAddress: String
    var horating: Int
    var ratingName: String
    var departure: String
    var arrivalCountry: String
    var tourDateStart: String
    var tourDateStop: String
    var numberOfNights: Int
    var room: String
    var nutrition: String
    var tourPrice: Int
    var fuelCharge: Int
    var serviceCharge: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case hotelName = "hotel_name"
        case hotelAddress = "hotel_adress"
        case horating
        case ratingName = "rating_name"
        case departure
        case arrivalCountry = "arrival_country"
        case tourDateStart = "tour_date_start"
        case tourDateStop = "tour_date_stop"
        case numberOfNights = "number_of_nights"
        case room
        case nutrition
        case tourPrice = "tour_price"
        case fuelCharge = "fuel_charge"
        case serviceCharge = "service_charge"
    }
}
