//
//  ContentView.swift
//  DragonBallSwift
//
//  Created by Raúl Gallego Alonso on 29/5/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var favoritesViewModel: FavoritesViewModel = FavoritesViewModel()
    
    
    var body: some View {
        ZStack {
            Color.backgroundColorEX
                .ignoresSafeArea()

            
            
            ZStack {
                Color("BackgroundColor")
                    .ignoresSafeArea()
                
                
                TabView {
                    WikiView()
                        .environment(favoritesViewModel)
                        .tabItem {
                            Label("Wiki", systemImage: "books.vertical.fill")
                        }
                    
                    SongListView(songs: SongsModel())
                        .tabItem {
                            Label("Reproductor", systemImage:"music.note")
                        }
                     
                    
                    GamesView()
                        .tabItem {
                            Label("Juegos", systemImage: "gamecontroller.fill")
                                .tint(.accentColor)
                        }
                    
                    ProfileSettingsView()
                        .tabItem {
                            Label("Obciones", systemImage: "gearshape.2.fill")
                                .tint(.accentColor)
                        }
                }
            }
        }
    }
}
#Preview {
 ContentView()
}
