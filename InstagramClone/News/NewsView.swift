//
//  NewsView.swift
//  InstagramClone
//
//  Created by Raza Khan on 20/05/21.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        HStack{
            Image("raza")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
                .foregroundColor(.gray)
                .frame(width: 40)
              
            Text("This is Instagram clone made in SwiftUI with out backend by @razakhan.dev")
            Image(systemName: "clear")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20).padding()
                .foregroundColor(.gray)
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
