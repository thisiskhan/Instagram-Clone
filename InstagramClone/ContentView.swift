//
//  ContentView.swift
//  InstagramClone
//
//  Created by Raza Khan on 20/05/21.
import SwiftUI

struct ContentView: View {
    let people: [Person] = [
        Person(name: "Raza Khan", image: "image1"),
        Person(name: "Sufiyan Khan", image: "image2"),
        Person(name: "Mohammed", image: "image3"),
    ]
    var body: some View {
        GeometryReader{
            geometry in
            
            let colWidth = geometry.size.width / 3
            
            TabView{
                
                NavigationView{
                    VStack{
                        // Nav
                        NavView(colWidth: colWidth)
                        ScrollView{
                            
                            
                            VStack{
                                NewsView()
                                    .padding(.leading, 10)
                                    .padding(.trailing, 10)
                                    .padding(.bottom, 15)
                                
                                ThumbView()
                                    .padding(.bottom, 15)
                                
                                
                                LazyVStack{
                                    ForEach(people, id: \.id){
                                        person in
                                        PersonHeader(person: person)
                                        Divider()
                                        Image(person.image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                        
                                        PersoneLikeBar(colWidth: colWidth)
                                        
                                        Divider()
                                    }
                                    
                                    
                                }
                            }
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                            
                        }
                        .padding()
                        
                    }
                    
                    .navigationBarHidden(true)
                    
                    
                }
                .tabItem {
                    Image(systemName: "house.fill")
                }
                NavigationView{
                    VStack{
                        
                    }
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                NavigationView{
                    VStack{
                        
                    }
                }
                .tabItem {
                    Image(systemName: "camera")
                }
                NavigationView{
                    VStack{
                        
                    }
                }
                .tabItem {
                    Image(systemName: "person")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
