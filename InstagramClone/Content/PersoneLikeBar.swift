//
//  PersoneLikeBar.swift
//  InstagramClone
//
//  Created by Raza Khan on 20/05/21.
//

import SwiftUI

struct PersoneLikeBar: View {
    var colWidth: CGFloat
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth)),
        ]){
            HStack{
                Image(systemName: "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 15)
                    .padding(.trailing, 10)
                    .foregroundColor(.gray)
                
                Image(systemName: "message")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 15)
                    .padding(.trailing, 10)
                    .foregroundColor(.gray)
                Image(systemName: "paperplane")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 15)
                    .padding(.top, -8)
                    .foregroundColor(.gray)
                
            }
            Spacer()
            Image(systemName: "bookmark")
                .resizable()
                .aspectRatio(contentMode: .fit
                )
                .frame(width: 10)
                .foregroundColor(.gray)
            
            
        }
    }
}

