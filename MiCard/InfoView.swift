//
//  InfoView.swift
//  MiCard
//
//  Created by Volodymyr Kryvytskyi on 09.09.2023.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color(.primaryLight))
            .frame(height: 50.0)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(Color(.primaryGreen))
                    Text(text)
                        .font(.system(size: 20))
                        .foregroundColor(Color(.primaryDark))
                })
            .padding(.horizontal, 30)
            .padding(.vertical, 5)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+380999490665", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
