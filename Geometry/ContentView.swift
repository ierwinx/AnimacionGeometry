import SwiftUI

struct ContentView: View {
    
    @State var bShow = false
    
    var body: some View {
        VStack {
            GeometryReader { proxy in
                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        Rectangle()
                            .foregroundColor(.red)
                            .overlay(
                                Text("1")
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(.white)
                            )
                            .frame(width: proxy.size.width / 2, height: proxy.size.height / 2)
                        
                        Rectangle()
                            .foregroundColor(.purple)
                            .overlay(
                                Text("2")
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(.white)
                            )
                            .frame(width: proxy.size.width / 2, height: proxy.size.height / 2)
                    }
                    
                    Rectangle()
                        .foregroundColor(.green)
                        .overlay(
                            
                            Button(action: {
                                bShow = true
                            }, label: {
                                Text("Next")
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(.white)
                            })
                            
                        )
                        .frame(width: proxy.size.width, height: proxy.size.height * 0.3)
                }
            }
            .background(.blue)
            .fullScreenCover(isPresented: $bShow) {
                AnimacionGeometryView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
