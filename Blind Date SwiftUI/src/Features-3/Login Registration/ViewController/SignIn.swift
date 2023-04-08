//
//  SignIn.swift
//  Blind Date SwiftUI
//
//  Created by user on 3/28/23.
//

import SwiftUI

struct SignIn: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        ZStack {
            VStack{
                Group {
                    Image("signIn")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 200)
                    Spacer().frame(maxHeight: 40)
                    Text("Log In").foregroundColor(Color.black).font(.system(size: 30)).fontWeight(.bold)
                    Spacer().frame(maxHeight: 30)
                        TextField("Phone Number", text: $email)
                        Spacer().frame(maxHeight: 10)
                        Divider()
                            .frame(height: 1.5)
                            .padding(.horizontal, 30)
                            .background(Color.black)
                }
                
                Group {
                    Spacer().frame(maxHeight: 40)
                        TextField("Pin Number", text: $password)
                        Spacer().frame(maxHeight: 10)
                        Divider()
                            .frame(height: 1.5)
                            .padding(.horizontal, 30)
                            .background(Color.black)
                    
                    Spacer().frame(maxHeight: 60)
                }
                
                Group {
                    Button(action: {
                    }, label: {
                        
                        NavigationLink(destination: Home(), label: {
                        Text("Sign In").font(.system(size: 22)).bold().frame(width: 350, height: 60).foregroundColor(.white).background(Color.pink).opacity(0.6).clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous)).shadow(radius: 3)
                        })
                        
                        
                    })
                    Spacer().frame(maxHeight: 20)
                    HStack {
                        NavigationLink(destination: SignUp(), label: {
                            Image(systemName: "g.circle.fill").resizable().frame(width: 30, height: 30).foregroundColor(.green)
                            Spacer().frame(maxWidth: 20)
                            Text("Sign in with Google").font(.system(size: 22)).bold().foregroundColor(.black)
                        })
                        
                    }.frame(width: 330, height: 33).padding().background(Color.white).cornerRadius(20).shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 0)
                    
                } // group
                Spacer().frame(maxHeight: 40)
                HStack {
                    
                    Text("Don't have an account?").foregroundColor(Color.black).opacity(0.5)
                    NavigationLink(destination: SignUp(), label: {
                        Text("Sign up").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 22)).fontWeight(.bold)
                    })
                    
                }.padding()
                
               
            }.padding().padding()
        }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
