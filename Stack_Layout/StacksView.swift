//
//  SwiftUIView.swift
//
//  Created by Ivens Liao on 2024/08/04.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("台北市")
                .font(.largeTitle)
                .bold()
            
            Text("26°C")
                .font(.system(size: 50, weight: .medium))
                .foregroundColor(.blue)
            
            HStack(spacing: 40) {
                VStack {
                    Image(systemName: "sun.max.fill")
                        .foregroundColor(.yellow)
                    Text("晴天")
                }
                
                VStack {
                    Image(systemName: "humidity.fill")
                        .foregroundColor(.blue)
                    Text("湿度 83%")
                }
            }
            
            Button(action: {
                // 刷新天气信息
                print("刷新天气")
            }) {
                Text("刷新")
                    .foregroundColor(.white)
                    .padding()
                    
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .frame(maxWidth: 500)
        .padding()
    }
}

#Preview {
    StacksView()
}
