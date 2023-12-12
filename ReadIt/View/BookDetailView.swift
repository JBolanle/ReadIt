//
//  BookDetailView.swift
//  ReadIt
//
//  Created by Jumoke Bolanle on 12/12/23.
//

import SwiftUI

struct BookDetailView: View {
    let book: MockData

    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Image(.iamnwcover) // Cover Art
                    .resizable()
//                    .frame(width: 865/4, height: 1296/4)
                    .aspectRatio(contentMode: .fit)
                VStack(alignment: .leading) {
                    Text(MockData.sampleBook.title) // Title
                        .font(.title3)
//                        .multilineTextAlignment(.center)
                        .allowsTightening(true)
                        .padding(.bottom)
                    Text("\(MockData.sampleBook.author)") // Author
                        .font(.headline)

                    // TODO: Add genre to detail view. look into iterating over arrays with for-in
                }
            }

            .padding()
        }
        .fontDesign(.rounded)
    }
}

#Preview {
    BookDetailView(book: MockData())
}
