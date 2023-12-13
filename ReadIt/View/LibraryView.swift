//
//  LibraryView.swift
//  ReadIt
//
//  Created by Jumoke Bolanle on 12/12/23.
//

import SwiftUI

struct LibraryView: View {
    @State var isPresentingAddBookManually = false
    @State var isPresentingAddBookOnline = false

    var body: some View {
        NavigationStack {
            VStack{
                Text("Your library is empty.")
                    .font(.title2)
                    .padding(.bottom, 5)
                Label("", systemImage: "books.vertical")
                    .font(.largeTitle)
                    .foregroundStyle(Color.gray)
                    .opacity(0.5)
            }
            .navigationTitle("Library")
            .navigationBarTitleDisplayMode(.inline)
        } // NavigationStack
    }
}

#Preview {
    LibraryView()
}
