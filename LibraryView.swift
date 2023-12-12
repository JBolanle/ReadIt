//
//  LibraryView.swift
//  ReadIt
//
//  Created by Jumoke Bolanle on 12/12/23.
//

import SwiftUI

struct LibraryView: View {
    @State var isPresentingAddBookManually = false

    var body: some View {
        NavigationStack {
            VStack{
                Text("Your library is empty.")
                    .font(.title2)
                    .padding(.bottom, 5)

                // Take user to add new book view to add manually, get from online, or to scan barcode
                Menu("Add a new book", systemImage: "plus.square") {
                    Button("Add Manually", systemImage: "pencil.line") {
                        isPresentingAddBookManually.toggle()
                    }
                    .sheet(isPresented: $isPresentingAddBookManually) {
                        AddNewBookManuallyView()
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
