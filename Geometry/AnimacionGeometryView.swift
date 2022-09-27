import SwiftUI

struct AnimacionGeometryView: View {
    
    var arrList = ["caja 1", "caja 2", "caja 3", "caja 4", "caja 5", "caja 6", "caja 7", "caja 8", "caja 9"]
    var dWidth = 0.0
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(arrList, id: \.self) { strCaja in
                    GeometryReader { proxy in
                        VStack {
                            Text(proxy.frame(in: .global).minY.description)
                            Spacer()
                            Text(strCaja)
                                .frame(width: proxy.size.width, height: 100)
                                .background(.green)
                                .cornerRadius(20)
                            Spacer()
                        }
                        .shadow(radius: 10)
                        
                        .rotation3DEffect(
                            Angle(degrees: proxy.frame(in: .global).minY - 47), axis: (x: 0.0, y: 10.0, z: 20.0)
                        )
                        
                    }
                    .frame(width: 370, height: 300)
                }
            }
            .padding(.trailing)
        }
        .padding(.horizontal)
    }
}

struct AnimacionGeometryView_Previews: PreviewProvider {
    static var previews: some View {
        AnimacionGeometryView()
    }
}
