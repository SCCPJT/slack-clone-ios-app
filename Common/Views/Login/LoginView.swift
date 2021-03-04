//
//  LoginView.swift
//  slack-clone-ios-app
//
//  Created by 박건욱 on 2021/03/04.
//

import Foundation
import SwiftUI


let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

struct LoginContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    var line : some View{
        VStack {
            Divider().background(lightGreyColor)
        }
        .padding(.horizontal, 20)
    }
    
    var body: some View {
        VStack{
            Text("InstaClone")
                .font(.custom("OleoScript-Regular", size: 50))
                .padding(.bottom, 20)
            TextField("Username", text: $username)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 10)
                .padding(.horizontal, 20)
            SecureField("Password", text: $password)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 10)
                .padding(.horizontal, 20)
            Text("Log in")
                .font(.system(size:15))
                .foregroundColor(.white)
                .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.black)
                .cornerRadius(5)
            
            HStack{
                Text("Forgot your login details?")
                    .fontWeight(.light)
                    .font(.system(size:10))
                Text("Get help signing in.")
                    .fontWeight(.light)
                    .font(.system(size:10))
            }
            .padding(.top, 10)
            .minimumScaleFactor(0.001)
            
            HStack{
                line
                Text("or")
                line
            }
            
            HStack{
                Image(systemName: "applelogo")
                Text("Log in with Apple")
            }
            Spacer()
            HStack{
                Text("Don't hava an account?")
                    .fontWeight(.light)
                    .font(.system(size:10))
                Text("Sign up.")                   .font(.system(size:10))
            }
            .minimumScaleFactor(0.001)
            .frame(maxWidth:.infinity)
            .frame(height: 40)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 0.5)
            
        }
    }
}

struct LoginContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginContentView()
    }
}