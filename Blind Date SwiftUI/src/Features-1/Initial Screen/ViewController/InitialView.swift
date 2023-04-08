//
//  InitialView.swift
//  Blind Date SwiftUI
//
//  Created by user on 3/28/23.
//

import SwiftUI

struct InitialView: View {
    var body: some View {
        ZStack {
            Image("burger1")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
            VStack (alignment: .leading){
                Text("Hello").foregroundColor(Color.white).font(.system(size: 60)).fontWeight(.bold)
                Text("Lorean Ipsum is simple dummy text").foregroundColor(Color.white)
                Spacer().frame(maxHeight: 300)
                Button(action: {
                }, label: {
                    
                    NavigationLink(destination: SignIn(), label: {
                    Text("Sign In").font(.system(size: 22)).bold().frame(width: 350, height: 60).foregroundColor(.white).background(Color.pink).opacity(0.6).clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous)).shadow(radius: 3)
                    })
                    
                    
                })
                Spacer().frame(maxHeight: 20)
                Button(action: {
                }, label: {
                    
                    NavigationLink(destination: SignUp(), label: {
                        Text("Sign Up").font(.system(size: 22)).bold().frame(width: 350, height: 60).foregroundColor(.white).background(Color.pink).opacity(0.6).clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous)).shadow(radius: 3)
                    })
                    
                    
                })
            }
            
            
        }
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
