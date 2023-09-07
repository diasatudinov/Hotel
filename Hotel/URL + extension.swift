//
//  URL + extension.swift
//  Hotel
//
//  Created by Atudinov Dias on 05.09.2023.
//

import Foundation

extension URL {
    static var development: URL {
        URL(string: "https://run.mocky.io/v3")!
    }
    
    static var production: URL {
        URL(string: "https://run.mocky.io/v3")!
    }
    
    static var `default`: URL{
        #if DEBUG
            return development
        #else
            return production
        #endif
    }
    
    static var allCategories: URL {
        URL(string: "/35e0d18e-2521-4f1b-a575-f0fe366f66e3", relativeTo: Self.default)!
    }
//    static func prodectsByCategory(_ categoryId: Int) -> URL {
//        return URL(string: "/api/v1/categories/\(categoryId)/products", relativeTo: Self.default)!
//    }
}
