//
//  SwiftUIView.swift
//
//  Created by Ivens Liao on 2024/08/04.
//

import SwiftUI

struct HStackView: View {
    var body: some View {
        HStack {
            Image(systemName: "laptopcomputer")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .padding(.trailing, 10)
            Text("MacBook Pro 14")
                .font(.headline)
            Spacer() // Use a spacer to push everything to the edges
            Text("$1999")
                .font(.subheadline)
            Button(action: {
                // Action to add product to cart
                print("Added to cart")
            }) {
                Text("加入购物车")
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .frame(maxWidth: 500)
        .padding()
    }
}

#Preview {
    HStackView()
}
