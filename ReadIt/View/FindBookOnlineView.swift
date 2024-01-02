//
//  AddBookOnlineView.swift
//  ReadIt
//
//  Created by Jumoke Bolanle on 12/12/23.
//

import SwiftUI
let networkManager = NetworkManager.self

struct FindBookOnlineView: View {
    @Published var searchText = ""
//    @State private var searchText = ""
    @State private var searchPrompt = "Search by title, author, or ISBN."

    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
//                    Text("Hello")
                }
            }
            .navigationTitle("Find a book")
            .navigationBarTitleDisplayMode(.inline)
        }
        .searchable(text: $searchText, prompt: searchPrompt)
        .onChange(of: searchText) { oldValue, newValue in
            networkManager.searchBooks(NetworkManager)
        }
    }
}

#Preview {
    FindBookOnlineView()
}
