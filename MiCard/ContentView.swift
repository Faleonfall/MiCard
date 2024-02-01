//
//  ContentView.swift
//  MiCard
//
//  Created by Volodymyr Kryvytskyi on 09.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let borderRadius: CGFloat = 20
        let phoneNumber = "+380999490665"
        let email = "faleonfall@gmail.com"
        
        ZStack {
            Color("BackgroundDark")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("vladimir")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 165.0, height: 225.0)
                    .cornerRadius(borderRadius)
                    .overlay(RoundedRectangle(cornerRadius: borderRadius).stroke(Color(.white), lineWidth: 8))
                
                Text("Volodymyr Kryvytskyi ")
                    .font(Font.custom("Pacifico-Regular", size: 36))
                    .foregroundColor(Color(.white))
                    .bold()
                Text("iOS Developer")
                    .foregroundColor(Color(.white))
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(text: phoneNumber, imageName: "phone.fill")
                InfoView(text: email, imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
