//
//  ContentView.swift
//  MovieStreaming
//
//  Created by Necati Bozkurt on 15.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                  Label("", systemImage: "house")
                }
            
            PlayView()
                .tabItem {
                  Label("", systemImage: "play.circle")
                }
            
            SearchView()
                .tabItem {
                  Label("", systemImage: "magnifyingglass")
                }
            
            UserView()
                .tabItem {
                  Label("", systemImage: "person.circle")
                }
        }
        .accentColor(.white)
        .onAppear {
            UITabBar.appearance().barTintColor = .black
            UINavigationBar.appearance().barTintColor = .placeholderText
        }
        

       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
