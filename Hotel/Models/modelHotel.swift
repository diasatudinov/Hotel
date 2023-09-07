//
//  modelHotel.swift
//  Hotel
//
//  Created by Atudinov Dias on 05.09.2023.
//

import Foundation

struct Hotel: Hashable,Codable {
    
    var id: Int
    var name: String
    var adress: String
    var minimalPrice: Int
    var priceForIt: String
    var rating: Int
    var ratingName: String
    var imageUrls: [String]
    var aboutTheHotel: AboutHotel
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case adress
        case minimalPrice = "minimal_price"
        case priceForIt = "price_for_it"
        case rating
        case ratingName = "rating_name"
        case imageUrls = "image_urls"
        case aboutTheHotel = "about_the_hotel"
    }
}

struct AboutHotel: Codable, Hashable {
    var description: String
    var peculiarities: [String]
}
