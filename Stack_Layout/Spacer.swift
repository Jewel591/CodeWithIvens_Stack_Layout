import SwiftUI

struct SpacerExampleView: View {
    var body: some View {
        HStack {
            Button(action: {
                // 执行取消操作
                print("取消")
            }) {
                Text("取消")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(8)
            }

            Spacer() // 这将推动取消按钮和保存按钮分别到左右两边

            Text("更多操作")
                .font(.headline)
            
            Spacer() // 再次使用 Spacer 保持文本在中间位置

            Button(action: {
                // 执行保存操作
                print("保存")
            }) {
                Text("保存")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
        }
        .padding() // 给整个 HStack 添加内边距
    }
}

struct SpacerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerExampleView()
    }
}
