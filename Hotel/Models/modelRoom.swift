//
//  modelRoom.swift
//  Hotel
//
//  Created by Atudinov Dias on 06.09.2023.
//

import Foundation

struct Rooms: Hashable, Codable{
    var rooms: [Room]
}
struct Room: Hashable, Codable{
    var id: Int
    var name: String
    var price: Int
    var pricePer: String
    var peculiarities: [String]
    var imageUrls: [String]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case price
        case pricePer = "price_per"
        case peculiarities
        case imageUrls = "image_urls"
    }
}
