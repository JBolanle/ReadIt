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
            BookDetailView(book: Book.sampleBook)
                .tabItem { Label("Book", systemImage: "book") }
        }
    }
}

#Preview {
    ContentView(book: Book.sampleBook)
}
