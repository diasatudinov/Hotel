//
//  URLImage.swift
//  Hotel
//
//  Created by Atudinov Dias on 05.09.2023.
//

import SwiftUI

struct URLImage: View {
    let urlString: String
    
    @State var data: Data?
    
    var body: some View {
        if let data = data, let uiimage = UIImage(data: data) {
            Image(uiImage: uiimage)
                .resizable()
                .aspectRatio(contentMode: .fill)
//                .frame(width: 343, height: 257)
                .background(Color.gray)
        } else {
            Image(systemName: "photo.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 343, height: 257)
                .background(Color.gray)
                .onAppear{
                    fetchData()
                }
        }
    }
    
    private func fetchData() {
        guard let url = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data ,_, _ in
            self.data = data
        }
        task.resume()
    }
}
