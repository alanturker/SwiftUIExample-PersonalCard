//
//  InfoView.swift
//  PersonalCard
//
//  Created by admin on 11.03.2022.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 23)
            .frame(height: 40, alignment: .center)
            .foregroundColor(.white)
            .shadow(color: .black, radius: 8, x: -3, y: 3)
            .overlay(RoundedRectangle(cornerRadius: 23).stroke(Color.black, lineWidth: 4))
            .overlay(HStack(spacing: 15.0) {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                    .frame(width: 25, height: 25, alignment: .center)
                Text(text)
                    .bold()
            }
            )
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
