//
//  Pay.swift
//  Blind Date SwiftUI
//
//  Created by user on 4/5/23.
//

import SwiftUI

struct Pay: View {
    var body: some View {
        VStack{
            VStack {
                VStack {
                    Text("MAsrafi Anam")
                        .font(.title2)
                }.frame(width: UIScreen.main.bounds.width, height: 80).background(Color.pink).cornerRadius(20, corners: [.bottomLeft, .bottomRight])
                Spacer()
                //Text("Enter your birthday")
                    .font(.title)
            }.frame(width: UIScreen.main.bounds.width, height: 100).background(Color(hex: 0xDA789B)).cornerRadius(20, corners: [.bottomLeft, .bottomRight])
            Spacer().frame(maxHeight: 40)
            HStack {
                Image("bkash").resizable().foregroundColor(Color.green).frame(width: 50, height: 50)
                Spacer()
                Text("bKash").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 25)).fontWeight(.bold)
                Spacer()
            }.frame(width: 330, height: 50).padding().background(Color(hex: 0xDA789B)).cornerRadius(15).shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 0)
            Spacer().frame(maxHeight: 20)
            HStack {
                Image("dbbl").resizable().foregroundColor(Color.green).frame(width: 50, height: 50)
                Spacer()
                Text("DBBL").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 25)).fontWeight(.bold)
                Spacer()
            }.frame(width: 330, height: 50).padding().background(Color(hex: 0xDA789B)).cornerRadius(15).shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 0)
            Spacer()
        }
    }
}

struct Pay_Previews: PreviewProvider {
    static var previews: some View {
        Pay()
    }
}
