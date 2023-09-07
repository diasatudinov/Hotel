//
//  SwiftUIView.swift
//  Hotel
//
//  Created by Atudinov Dias on 07.09.2023.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var isExpanded = false

        var body: some View {
            List {
                Section {
                    DisclosureGroup(isExpanded: $isExpanded) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Additional Information")
                                .font(.headline)
                            
                            Text("This is some additional content that is hidden by default.")
                                .font(.body)
                                .foregroundColor(.secondary)
                        }
                        .padding()
                    } label: {
                        Text("Expandable Row")
                    }
                }
            }
            .listStyle(.inset) // Optional: Add a style to the list
        }
    }

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
