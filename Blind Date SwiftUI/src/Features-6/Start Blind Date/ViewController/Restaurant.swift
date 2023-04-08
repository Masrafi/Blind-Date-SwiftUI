//
//  Restaurant.swift
//  Blind Date SwiftUI
//
//  Created by user on 4/4/23.
//

import SwiftUI

struct Restaurant: View {
    var body: some View {
        VStack {
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
            Text("Polular Restaurant")
                .font(.title)
            NavigationLink(destination: Food(), label: {
                HStack {
                        Image("pizza")
                        .resizable()
                        .frame(width: 150, height: 130).cornerRadius(15)
                    Spacer().frame(maxWidth: 20)
                        VStack {
                            Text("Star Kabab").font(.title3).fontWeight(.bold)
                            Text("Rupayan Taj Tower Flat: K5, Level: 5, 1.1/1 ").font(.title3)
                        }
                       
                    Spacer()
                    
                }.frame(width: 330, height: 120).padding().background(Color.white).cornerRadius(20).shadow(color: Color.pink.opacity(0.2), radius: 5, x: 0, y: 0)
            })
                
            Spacer().frame(maxHeight: 20)
            HStack {
                    Image("burger")
                    .resizable()
                    .frame(width: 150, height: 130).cornerRadius(15)
                Spacer().frame(maxWidth: 20)
                    VStack {
                        Text("Star Kabab").font(.title3).fontWeight(.bold)
                        Text("Rupayan Taj Tower Flat: K5, Level: 5, 1.1/1 ").font(.title3)
                    }
                   
                Spacer()
                
            }.frame(width: 330, height: 120).padding().background(Color.white).cornerRadius(20).shadow(color: Color.pink.opacity(0.2), radius: 5, x: 0, y: 0)
            Spacer()
        }
    }
}

struct Restaurant_Previews: PreviewProvider {
    static var previews: some View {
        Restaurant()
    }
}
