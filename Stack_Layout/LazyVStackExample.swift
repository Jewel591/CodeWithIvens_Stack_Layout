import SwiftUI

struct LazyVStackExample: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(1...100, id: \.self) { index in
                    Text("条目 \(index)")
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(5)
                }
            }
            .padding()
        }
    }
}

struct LazyVStackExample_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStackExample()
    }
}
