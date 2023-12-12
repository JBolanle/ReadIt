//
//  LibraryView.swift
//  ReadIt
//
//  Created by Jumoke Bolanle on 12/12/23.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationStack {
            VStack{
                Text("Your library is empty.")
                    .font(.title2)
                    .padding(.bottom, 5)

                // Take user to add new book view
                Menu("Add a new book", systemImage: "plus.square") {
                    Button("Add Manually", systemImage: "pencil.line") {
                        //
                    }
                    Button("Search Online", systemImage: "magnifyingglass") {
                        //
                    }
                    Button("Scan Barcode", systemImage: "barcode.viewfinder") {
                        //
                    }
                }
            }
            .navigationTitle("Library")
            .navigationBarTitleDisplayMode(.inline)
        } // NavigationStack
    }
}

#Preview {
    LibraryView()
}
