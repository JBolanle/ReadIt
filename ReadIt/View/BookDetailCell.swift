////
////  BookDetailCell.swift
////  ReadIt
////
////  Created by Jumoke Bolanle on 12/12/23.
////
//
//import SwiftUI
//
//struct BookDetailCell: View {
//    let book: Book
//
//    var body: some View {
//        HStack {
//            Image(.iamnwcover)
//                .resizable()
//                .frame(width: 60, height: 90)
//                .aspectRatio(2/3, contentMode: .fit)
//            VStack(alignment: .leading, spacing: 5) {
//                Text(book.title)
//                    .font(.headline)
//                    .multilineTextAlignment(.leading)
////                Text("by \(book.authors)")
////                    .font(.subheadline)
////                    .multilineTextAlignment(.leading)
//            }
//        }
//        .fontDesign(.rounded)
//    }
//}
//
////#Preview {
////    BookDetailCell(book: Book.sampleBook)
////}
