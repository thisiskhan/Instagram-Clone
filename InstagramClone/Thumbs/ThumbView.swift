//
//  ThumbView.swift
//  InstagramClone
//
//  Created by Raza Khan on 20/05/21.
//

import SwiftUI

struct ThumbView: View {
    let people: [Person] = [
        Person(name: "Raza Khan", image: "raza"),
        Person(name: "Sufiyan Khan", image: "raza1"),
        Person(name: "Mohammed", image: "raza2"),
    ]
    var body: some View {
        
        
        LazyHStack{
            VStack(alignment: .leading){
                Image(systemName: "person.crop.circle.badge.plus")
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
                Text("Your Story")
                    .font(.system(size: 12))
                
            }
            ForEach(people, id: \.id){
                person in
                VStack{
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
                    
                    
                    
                    
                    Text(person.name)
                        .font(.system(size: 12))
                    
                }
                
            }
            
            
        }
        
    }
    
}


struct ThumbView_Previews: PreviewProvider {
    static var previews: some View {
        ThumbView()
    }
}
