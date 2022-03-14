//
//  ContentView.swift
//  PersonalCard
//
//  Created by admin on 11.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.00)
                .ignoresSafeArea()
            VStack(spacing: 10) {
                Image("resim")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(color: .black, radius: 8, x: -3, y: 3)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 5))
                    .frame(width: 200, height: 300, alignment: .center)
                Text("Türker Alan")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(Color(red: 0.95, green: 0.77, blue: 0.06, opacity: 1.00))
                    .shadow(color: .black, radius: 8, x: -3, y: 3)
                Text("iOS Developer")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 8, x: -3, y: 3)
                Divider()
                InfoView(text: "+905398485572", imageName: "phone.fill")
                InfoView(text: "alanturker@gmail.com", imageName: "envelope.fill")
                    
                
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


