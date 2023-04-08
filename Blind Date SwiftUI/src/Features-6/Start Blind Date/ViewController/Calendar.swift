//
//  Calendar.swift
//  Blind Date SwiftUI
//
//  Created by user on 4/4/23.
//

import SwiftUI

struct Calendar: View {
    @State private var date = Date.now
    var body: some View {
        
        VStack {
            Spacer().frame(maxHeight: 100)
                    Text("Enter your birthday")
                        .font(.title)
                    DatePicker("Enter your birthday", selection: $date)
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .frame(maxHeight: 400)
            Spacer().frame(maxHeight: 100)
            Button(action: {
            }, label: {
                
                NavigationLink(destination: Location(), label: {
                    Text("Next").font(.system(size: 22)).bold().frame(width: 200, height: 50).foregroundColor(.black).background(LinearGradient(colors: [.mint, .green], startPoint: .bottomLeading, endPoint: .topTrailing)).clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous)).shadow(radius: 3)
                })
                
                
            })
            Spacer()
        }.padding().background(Color(hex: 0xF9E79F )).cornerRadius(20).padding(.top).padding(.leading).padding(.trailing)
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        Calendar()
    }
}

