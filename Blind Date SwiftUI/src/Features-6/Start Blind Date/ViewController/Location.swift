//
//  Location.swift
//  Blind Date SwiftUI
//
//  Created by user on 4/4/23.
//

import SwiftUI

struct Location: View {
    var body: some View {
        //ZStack (alignment: .top){
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
            Search()
            Spacer().frame(maxHeight: 60)
            Text("Popular Place")
                .font(.title)
            Spacer().frame(maxHeight: 40)
            HStack{
                NavigationLink(destination: Restaurant(), label: {
                    VStack{
                        Image(systemName: "location.north.fill").font(.title)
                        Spacer().frame(maxHeight: 5)
                        Text("Gulshan")
                            .font(.title3).fontWeight(.bold)
                    }.frame(width: 120, height: 100).padding().background(Color(hex: 0xDA789B)).cornerRadius(20)
                })
                
                Spacer().frame(maxWidth: 15)
                VStack{
                    Image(systemName: "location.north.fill").font(.title)
                    Spacer().frame(maxHeight: 5)
                    Text("Dhanondi")
                        .font(.title3).fontWeight(.bold)
                }.frame(width: 120, height: 100).padding().background(Color(hex: 0xDA789B)).cornerRadius(15)
            }
            Spacer().frame(maxHeight: 20)
            HStack{
                VStack{
                    Image(systemName: "location.north.fill").font(.title)
                    Spacer().frame(maxHeight: 5)
                    Text("Mirpur")
                        .font(.title3).fontWeight(.bold)
                }.frame(width: 120, height: 100).padding().background(Color(hex: 0xDA789B)).cornerRadius(15)
                Spacer().frame(maxWidth: 20)
                VStack{
                    Image(systemName: "location.north.fill").font(.title)
                    Spacer().frame(maxHeight: 5)
                    Text("Uttara")
                        .font(.title3).fontWeight(.bold)
                }.frame(width: 120, height: 100).padding().background(Color(hex: 0xDA789B)).cornerRadius(15)
            }
            Spacer()
            }.frame(width: UIScreen.main.bounds.width).background(Color.white)
            
        }
        
    //}
}

struct Location_Previews: PreviewProvider {
    static var previews: some View {
        Location()
    }
}


struct Search: View {
    var body: some View {
        Group {
            Spacer().frame(maxHeight: 20)
            HStack {
                
                Text("Search by location name").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 22)).fontWeight(.bold)
                Spacer()
                Image(systemName: "house.fill").resizable().foregroundColor(Color.green).frame(width: 50, height: 50)
                
            }.frame(width: 330, height: 50).padding().background(Color(hex: 0xDA789B)).cornerRadius(20).shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 0)
        }
    }
}
