//
//  SwiftUIView.swift
//
//  Created by Ivens Liao on 2024/08/04.
//

import SwiftUI

struct VStackView: View {
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("会员登录")
                .font(.largeTitle)
                .bold()

            TextField("用户名", text: $username)
                .padding(.horizontal)

            SecureField("密码", text: $password)
                .padding(.horizontal)

            Button(action: {
                // 执行登录操作
                print("登录操作")
            }) {
                Text("登录")
                    .foregroundColor(.white)
                    .padding()
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .frame(maxWidth: 400)
        .padding()
    }
}

#Preview {
    VStackView()
}
