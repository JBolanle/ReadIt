//
//  ContentView.swift
//  ReadIt
//
//  Created by Jumoke Bolanle on 12/11/23.
//

import SwiftUI

struct ContentView: View {
    let book: Book

    var body: some View {
        TabView {
            LibraryView()
                .tabItem { Label("Library", systemImage: "books.vertical") }
            FindBookOnlineView()
                .tabItem { Label("Search", systemImage: "magnifyingglass") }
        }
        .fontDesign(.rounded)
    }
}

#Preview {
    ContentView(book: Book.sampleBook)
}
