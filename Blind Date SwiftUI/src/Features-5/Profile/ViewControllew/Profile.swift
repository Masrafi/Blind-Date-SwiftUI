//
//  Profile.swift
//  Blind Date SwiftUI
//
//  Created by user on 4/6/23.
//

import SwiftUI

struct Profile: View {
    @State var title: String = ""
    var body: some View {
        VStack {
            VStack {
                VStack {
                    HStack{
                        Image("dbbl").resizable().frame(width: 80, height:75)
                        Spacer().frame(maxWidth: 20)
                        Text("Blind Date Question").font(.title).foregroundColor(Color.black).opacity(0.9)
                    }
                }.frame(width: UIScreen.main.bounds.width, height: 140).background(Color.white).cornerRadius(20, corners: [.bottomLeft, .bottomRight])
                Spacer()
                //Text("Enter your birthday")
                    .font(.title)
            }.frame(width: UIScreen.main.bounds.width, height: 170).background(Color(hex: 0xEAECEE )).cornerRadius(20, corners: [.bottomLeft, .bottomRight])
            Spacer().frame(maxHeight: 80)
            Text("Preference Question 1").font(.title3).foregroundColor(Color.pink)
            Spacer().frame(maxHeight: 10)
            Text("How old are you?").font(.title3).foregroundColor(Color.black).fontWeight(.bold)
            Spacer().frame(maxHeight: 40)
            HStack {
                TextField(
                  "Enter answer here",
                  text: $title
                ).font(Font.system(size: 22))
            }.frame(width: 330, height: 40).padding().background(Color.white).cornerRadius(20).shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 0)
            Spacer()
            HStack {
                Text("CONTINUE").font(.title2).foregroundColor(Color.white).fontWeight(.bold)
            }.frame(width: 330, height: 40).padding().background(Color(hex: 0xDA789B)).cornerRadius(20).shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 0)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
