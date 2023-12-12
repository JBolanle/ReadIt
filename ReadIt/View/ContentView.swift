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
            BookDetailView(book: Book.sampleBook)
                .tabItem { Label("Book", systemImage: "book") }
        }
        .fontDesign(.rounded)
    }
}

#Preview {
    ContentView(book: Book.sampleBook)
}
