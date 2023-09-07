//
//  HotelModel.swift
//  Hotel
//
//  Created by Atudinov Dias on 05.09.2023.
//

import Foundation


@MainActor
class StoreModel: ObservableObject{
    
    let client = StoreHTTPClient()
    @Published private(set) var categories: [Hotel] = []
    //@Published private(set) var products: [Product] = []
    func fetchCategories() async throws {
        categories = try await client.getCategories(url: URL.allCategories)
    }
    
//    func fetchProductsByCategory(_ categoryId: Int) async throws {
//        products = try await client.getProductByCategory(url: URL.prodectsByCategory(categoryId))
//
//    }
    
    
}
