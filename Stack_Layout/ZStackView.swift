import SwiftUI

struct ZStackView: View {
    var body: some View {
        ZStack() {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 200)
                .cornerRadius(10)
            VStack(alignment:.leading) {
                Spacer()
                Text("山川景色")
                    .font(.headline)
                    .foregroundColor(.white)
                    .shadow(radius: 1)
                    .padding(.horizontal)
                Divider()
                Text("这里是自然风光摄影爱好者的天堂，拥有丰富的地形和生态系统。")
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .shadow(radius: 1)
                    .lineLimit(3)
                    .padding([.horizontal, .bottom])
            }
            .frame(maxWidth: .infinity)
        }
        .frame(width: 300, height: 200)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackView()
    }
}
