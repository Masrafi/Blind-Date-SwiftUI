//
//  Home.swift
//  Blind Date SwiftUI
//
//  Created by user on 3/30/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        ScrollView (.horizontal, showsIndicators: true) {
            HStack {
                //ForEach(0 ..< 4) {
                    //item in
                    
                
                NavigationLink(destination: Appointment(), label: {
                    Screen(title: "Start a Blind Date", color: Color.red)
                })
                
               
                NavigationLink(destination: SetPreference(), label: {
                    Screen(title: "Set Your Preference", color: Color.yellow)
                })
                Screen(title: "Set Your Preference", color: Color.brown)
                Screen(title: "Set Your Preference", color: Color.purple)
                //}.padding(.trailing)

            }.padding(.leading)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


struct Screen: View {
    let title: String
    let color: Color
    var body: some View {
        VStack {

            Text(title).font(.title3).fontWeight(.bold)

           
        }.frame( width:UIScreen.main.bounds.width,
                 height:UIScreen.main.bounds.height).padding().background(color).cornerRadius(20)
    }
}
