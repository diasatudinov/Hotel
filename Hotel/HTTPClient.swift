//
//  HTTPClient.swift
//  Hotel
//
//  Created by Atudinov Dias on 05.09.2023.
//

import Foundation

enum NetworkError: Error {
    case badUrl
    case invalidResponse
    case decodingError
    case invalidServerResponse
    case invalidURL
    case badURL
}

class StoreHTTPClient {
    func getCategories(url: URL) async throws -> [Hotel] {
        let (data,response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        guard let hotels = try? JSONDecoder().decode([Hotel].self, from: data) else {
            throw NetworkError.decodingError
        }
        return hotels
    }
    
//    func getProductByCategory(url: URL) async throws -> [Product]{
//        let (data,response) = try await URLSession.shared.data(from: url)
//        guard let httpResponse = response as? HTTPURLResponse,
//              httpResponse.statusCode == 200 else {
//            throw NetworkError.invalidResponse
//        }
//
//        guard let products = try? JSONDecoder().decode([Product].self, from: data) else {
//            throw NetworkError.decodingError
//        }
//        return products
//    }
//
}
