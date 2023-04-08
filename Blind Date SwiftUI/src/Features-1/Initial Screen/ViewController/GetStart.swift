//
//  GetStart.swift
//  Blind Date SwiftUI
//
//  Created by user on 3/28/23.
//

import SwiftUI

struct GetStart: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Matched").foregroundColor(Color.black).opacity(0.5).font(.custom("PlayfairDisplay-Bold", size: 30)).fontWeight(.bold)
                    
                    Spacer().frame(maxHeight: 100)
                    Image("signUp")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                    
                    Spacer().frame(maxHeight: 100)
                    Button(action: {
                    }, label: {
                        
                        NavigationLink(destination: InitialView(), label: {
                            Text("Get Started").font(.system(size: 22)).bold().frame(width: 200, height: 60).foregroundColor(.black).background(LinearGradient(colors: [.mint, .green], startPoint: .bottomLeading, endPoint: .topTrailing)).clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous)).shadow(radius: 3)
                        })
                        
                        
                    })
                }
            }
        }
    }
}

struct GetStart_Previews: PreviewProvider {
    static var previews: some View {
        GetStart()
    }
}
