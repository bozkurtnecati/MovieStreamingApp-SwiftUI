//
//  HomeView.swift
//  MovieStreaming
//
//  Created by Necati Bozkurt on 15.07.2022.
//

import SwiftUI

struct HomeView: View {
    
    @State var text : String = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30.0) {
                
                HeaderView()
                
                MySearchView(text: text)
                
                FilterView()
                
                SeriesView()
                
                Spacer()
            }
            .navigationBarHidden(true)
            .padding()
            .background(Color("bg"))
            .foregroundColor(.white)
            
        }
 
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



//Views
struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5.0) {
                Text("Hello Daizy!")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("Check for latest addition.")
                    .opacity(0.75)
            }
            Spacer()
            Image("user")
        }
    }
}

struct MySearchView: View {
    @State var text : String = ""
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text("Search")
                    .opacity(0.6)
                    .padding(.horizontal,50)
            }
            TextField("", text: $text)
                .padding(.horizontal, 50)
                .frame(height: 52.0)
                .background(Color(.init(red: 255, green: 255, blue: 255, alpha: 0.08)))
                .cornerRadius(16)
                .foregroundColor(Color.white)
                .overlay(
                    Label("", systemImage: "magnifyingglass")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                )
                .overlay(
                    Label("", systemImage: "mic")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding()
                        .opacity(0.5)
                )
        }
    }
}

struct FilterView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Filters")
                .font(.title3)
                .bold()
            
            HStack(spacing: 37.0){
                VStack {
                    Image(systemName: "shippingbox.fill")
                        .font(.system(size: 25))
                        .frame(width: 55.0, height: 55.0)
                        .background(Color.gray)
                        .cornerRadius(16)
                    Text("Genre")
                        .font(.callout)
                        .opacity(0.8)
                }
                VStack {
                    Image(systemName: "star.fill")
                        .font(.system(size: 25))
                        .frame(width: 55.0, height: 55.0)
                        .background(Color.gray)
                        .cornerRadius(16)
                    Text("Top IMDB")
                        .font(.callout)
                        .opacity(0.8)
                }
                VStack {
                    Image(systemName: "network")
                        .font(.system(size: 25))
                        .frame(width: 55.0, height: 55.0)
                        .background(Color.gray)
                        .cornerRadius(16)
                    Text("Langue")
                        .font(.callout)
                        .opacity(0.8)
                }
                VStack {
                    Image(systemName: "film")
                        .font(.system(size: 25))
                        .frame(width: 55.0, height: 55.0)
                        .background(Color.gray)
                        .cornerRadius(16)
                    Text("Watched")
                        .font(.callout)
                        .opacity(0.8)
                }
                
            }
        }
    }
}

struct SeriesView: View {
    var body: some View {
        VStack(){
            Text("Featured Series")
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack() {
                    ForEach(0 ..< 15) { item in
                        GeometryReader { geometry in
                            NavigationLink(destination: SeriesDetailView()) {
                                Image("moneyHeist")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .rotation3DEffect(Angle(degrees: geometry.frame(in: .global).minX-100) / 20,
                                                      axis: (x: 0, y: 0, z: 0),
                                                      anchor: .center,
                                                      anchorZ: 20,
                                                      perspective: 1
                                )
                            }
                            
                        }
                        .padding()
                        .frame(width:200, height: 300.0)
                        
                    }
                }
                
            }
            
        }
    }
}
