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
                Label("", systemImage: "books.vertical")
                    .font(.largeTitle)
                    .foregroundStyle(Color.gray)
                    .opacity(0.5)
                    .padding()
                Text("Your library is empty. Please add a new book.")
                    .font(.title2)
                    .padding(.bottom, 5)
                    .multilineTextAlignment(.center)
            }
            .navigationTitle("Library")
            .navigationBarTitleDisplayMode(.inline)
        } // NavigationStack
    }
}

#Preview {
    LibraryView()
}
