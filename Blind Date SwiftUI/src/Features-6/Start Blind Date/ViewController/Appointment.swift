//
//  SetPreference.swift
//  Blind Date SwiftUI
//
//  Created by user on 4/3/23.
//

import SwiftUI

struct Appointment: View {
    var body: some View {
        //ZStack {
        VStack{
                    
                VStack{
                    Spacer().frame(maxHeight: 50)
                    Text("Set Your Appointment").font(.title).foregroundColor(Color.black).opacity(0.9)
                    
                    Image("signUp").resizable()
                        .scaledToFit()
                        .frame(width: 220, height: 220)
                    
                    Button(action: {
                    }, label: {
                        
                        NavigationLink(destination: Calendar(), label: {
                            Text("Button").font(.system(size: 22)).bold().frame(width: 200, height: 50).foregroundColor(.black).background(LinearGradient(colors: [.mint, .green], startPoint: .bottomLeading, endPoint: .topTrailing)).clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous)).shadow(radius: 3)
                        })
                        
                        
                    })
                    Spacer().frame(maxHeight: 30)
                    Text("List of your Appointment").font(.title)
                }
                Spacer().frame(maxHeight: 20)
                Divider()
            VStack(alignment: .center){
                    HStack {
                        Image(systemName: "stop.fill").font(.title)
                        Text("List of your Appointment").font(.title3)
                        Image(systemName: "cross.fill").font(.title)
                    }
                Spacer().frame(maxHeight: 20)
                HStack  {
                    Text("Place").font(.title3)
                    Spacer().frame(maxWidth: 20)
                    Text("Dhanmondi").font(.title3)
                }
                HStack  {
                    Text("Restaurant").font(.title3)
                    Spacer().frame(maxWidth: 20)
                    Text("North End").font(.title3)
                }
                HStack  {
                    Text("Food").font(.title3)
                    Spacer().frame(maxWidth: 20)
                    Text("Coffee").font(.title3)
                }
                Divider().frame(height: 3).background(Color.pink).opacity(0.5)
                Spacer()
            }.padding().frame(width: 350, height: .infinity).background(Color(hex: 0xfffcdd)).cornerRadius(20)
            Spacer()
            }.frame(width:350,
                    height:UIScreen.main.bounds.height).background(Color.white).cornerRadius(20).shadow(color: Color.pink.opacity(0.5), radius: 5, x: 0, y: 0).padding(.top, 100)
    }
}

struct Appointment_Previews: PreviewProvider {
    static var previews: some View {
        Appointment()
    }
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
