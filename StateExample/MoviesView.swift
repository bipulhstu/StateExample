//
//  MoviesView.swift
//  StateExample
//
//  Created by Bipul Islam on 19/2/25.
//

import SwiftUI

struct Movie: Identifiable{
    var id = UUID()
    var name: String
    var favorite: Bool = false
}

struct MoviesView: View {
    
    @State private var movies: [Movie] = [
        Movie(name: "Mufasa - The Lion King"),
        Movie(name: "The Lion King"),
        Movie(name: "The Lion King"),
        Movie(name: "Naruto"),
        Movie(name: "Naruto"),
        Movie(name: "Naruto")
    ]
    
    var body: some View {
        NavigationStack{
            VStack{
                List($movies){ $movie in
                    MovieRowView(movie: $movie)
                }
                
                Text("Favorites: \(movies.filter {$0.favorite}.count)")
                    .font(.headline)
                    .padding()
            }
            .navigationTitle("Movie")
        }
    }
}

struct MovieRowView: View {
    
    @Binding var movie: Movie
    
    var body: some View {
        HStack{
            Text(movie.name)
            
            Spacer()
            
        
            Button {
                movie.favorite.toggle()
            } label: {
                Image(systemName: movie.favorite ? "heart.fill" : "heart")
                    .foregroundStyle(movie.favorite ? .red : .gray)
            }
            .buttonStyle(.borderless)

        }
        .padding(.vertical, 4)
    }
}

#Preview {
    MoviesView()
}
