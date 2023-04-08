//
//  Food.swift
//  Blind Date SwiftUI
//
//  Created by user on 4/4/23.
//

import SwiftUI

struct Food: View {
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
            Search()
            
            Spacer().frame(maxHeight: 40)
            Text("Polular Food")
                .font(.title).fontWeight(.bold)
            
            
           // NavigationLink(destination: Food(), label: {
                HStack {
                    Spacer().frame(maxWidth: 5)
                        Image("pizza")
                        .resizable()
                        .frame(width: 150, height: 130).cornerRadius(15)
                    Spacer().frame(maxWidth: 10)
                    VStack (alignment: .leading){
                            Text("Pizza").font(.title3).fontWeight(.bold)
                            Text("Rupayan Taj Tower Flat: K5, Level: 5, 1.1/1").font(.system(size: 15))
                            Text("Price- 330").fontWeight(.bold)
                        HStack{
                            Button(action: {
                            }, label: {
                                
                                NavigationLink(destination: InitialView(), label: {
                                    Text("Buy Now").font(.system(size: 12)).fontWeight(.bold).frame(width: 70, height: 30).foregroundColor(.white).background(LinearGradient(colors: [.mint, .pink], startPoint: .bottomLeading, endPoint: .topTrailing)).clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous)).shadow(radius: 3)
                                })
                                
                                
                            })
                            
                            HStack {
                                
                                Image(systemName: "plus")
                                Text("0").font(.system(size: 12)).bold().frame(width: 25, height: 28).foregroundColor(.black).background(LinearGradient(colors: [.mint, .white], startPoint: .bottomLeading, endPoint: .topTrailing)).clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                                Image(systemName: "minus")
                                
                                
                            }.frame(width: 70, height: 1).padding().background(Color(hex: 0xDA789B)).cornerRadius(10)
                        }
                        }
                       
                    Spacer()
                    
                }.frame(width: 330, height: 120).padding().background(Color.white).cornerRadius(20).shadow(color: Color.pink.opacity(0.2), radius: 5, x: 0, y: 0)
            //})
            Spacer()
            HStack {
                HStack {
                    Text("Total: 300").font(.title3).fontWeight(.bold)
                    
                }.frame(width: 100, height: 30).padding().background(Color.pink).cornerRadius(20).shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 0)
                Spacer().frame(maxWidth: 40)
                NavigationLink(destination: Pay(), label: {
                    HStack {
                        Text("Checkout").font(.title3).fontWeight(.bold)
                        Image(systemName: "arrow.right")
                        
                    }.frame(width: 120, height: 30).padding().background(Color.pink).cornerRadius(20).shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 0)
                })
                
            }.frame(width: 300, height: 30).padding().background(Color(hex: 0xDA789B)).cornerRadius(20).shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 0)
        }
       
    }
}

struct Food_Previews: PreviewProvider {
    static var previews: some View {
        Food()
    }
}
