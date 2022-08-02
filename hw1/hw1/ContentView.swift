//
//  ContentView.swift
//  hw1
//
//  Created by Max will on 8/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Image("cinema")
                .resizable()
                .ignoresSafeArea()
                .blur(radius: 4)
        VStack{
            Text("My favourite movie ")
                .font(.system(size: 35, weight: .bold, design: .serif))

        

            ExtractedView(movie_image: "Mugen train", movie_name: "Mugen train", movie_rating: "8.2")
            ExtractedView(movie_image: "Maverick", movie_name: "Top gun: Maverick", movie_rating: "8.6")
            ExtractedView(movie_image: "harry", movie_name: "Harry potter", movie_rating: "8.2")
            ExtractedView(movie_image: "gladiator", movie_name: "Gladiator", movie_rating: "8.2")
            ExtractedView(movie_image: "Whoami", movie_name: "Who am I", movie_rating: "8.2")
            Spacer()
                
    }
            .padding()
            
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var movie_image: String
    var movie_name: String
    var movie_rating: String
    
    var body: some View {
        
            HStack{
                
                Image(movie_image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90)
                    .cornerRadius(15)
                    
                    
                    
                Text(movie_name)
                Spacer()
                Text(movie_rating)
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                    
            }
            .background(.white.opacity(0.3))
            .cornerRadius(24)
            .font(.system(size: 30, weight: .medium, design: .serif))
            
            
            
        
    }
}
