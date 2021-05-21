//
//  PeopleContentView.swift
//  InstagramClone
//
//  Created by Raza Khan on 20/05/21.
//

import SwiftUI

struct PersonHeader: View {
    var person: Person
    var body: some View {
        HStack{
            Image(person.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 65)
                
                .rotation3DEffect(
                    .degrees(180),
                    axis: (
                        x: 0,
                        y: 1,
                        z: 0
                    )
                )
                .foregroundColor(.gray)
                .border(Color.black)
                .clipShape(Circle())
                .overlay(Circle()
                            .stroke(Color.black, lineWidth: 2)
                )
            VStack(alignment: .leading){
                Text(person.name)
                    .fontWeight(.bold)
                Text("Mumbai India")
                    .fontWeight(.light)
                    .font(.system(size: 12))
            }
            Spacer()
            Image(systemName: "aqi.medium")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 16)
                .foregroundColor(.gray)
                .padding(.trailing, 20)
        }
    }
}

