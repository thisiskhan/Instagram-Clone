//
//  NavView.swift
//  InstagramClone
//
//  Created by Raza Khan on 20/05/21.
//

import SwiftUI

struct NavView: View {
    var colWidth: CGFloat
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth)),
        ]){
            Spacer()
            
            Text("Instaclone")
                .font(.custom("Insta", size: 20))
                
            Image(systemName: "paperplane")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:20)
                .padding(.horizontal, 2)
                
            
        }
    }
}


