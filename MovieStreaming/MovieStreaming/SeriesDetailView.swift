//
//  SeriesDetailView.swift
//  MovieStreaming
//
//  Created by Necati Bozkurt on 23.07.2022.
//

import SwiftUI

struct SeriesDetailView: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("moneyHeistHero")
                    .resizable()
                    .frame(height: 400.0)
                    .mask(
                        LinearGradient(gradient: Gradient(colors: [Color.white,Color.white.opacity(0)]), startPoint: .top, endPoint: .bottom)
                    )
                VStack(spacing: 10.0) {
                    Image(systemName: "play.fill")
                        .font(.system(size: 25))
                        .frame(width: 50.0, height: 50.0)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(50)
                        .padding(.bottom)
                    
                    Text("Money Heist : Part 5")
                        .font(.title2).bold()
                    
                    HStack {
                        Text("2021")
                        Image(systemName: "circlebadge.fill")
                            .font(.system(size: 8))
                            .opacity(0.5)
                        Text("Action, Crime, Drama")
                        Image(systemName: "circlebadge.fill")
                            .font(.system(size: 8))
                            .opacity(0.5)
                        Text("Episode - 8")
                    }
                    .font(.footnote)
                    .opacity(0.8)
                    
                    
                    HStack {
                        ForEach(0 ..< 4) { item in
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }
                        Image(systemName: "star.fill")
                    }
                    
                }
                .padding(.top,-120)
                .padding(.bottom)
                
                VStack {
                    Text("Episodes")
                        .frame(maxWidth:.infinity ,alignment: .leading)
                        
                    
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing: 25.0) {
                            ForEach(0 ..< 8) { item in
                                Image("money-heist-s01e01")
                                    .mask(
                                        LinearGradient(gradient: Gradient(colors: [Color.white,Color.white.opacity(0)]), startPoint: .top, endPoint: .bottom)
                                    )
                                    .overlay(alignment: .bottom){
                                        VStack() {
                                            Text("Episode - 1")
                                                .font(.footnote).bold()
                                            Text("The End of the Road")
                                                .font(.system(size: 8))
                                                .multilineTextAlignment(.center)
                                                .frame(maxWidth:70)
                                        }
                                    }
                            }
                        }
                    }
                    
                    
                    
                    VStack(alignment: .leading, spacing: 10.0){
                        Text("Plot")
                            .font(.title3)
                            .bold()
                        Text("Eight thieves take hostages and lock themselves in the Royal Mint of Spain as a criminal mastermind manipulates the police to carry out his plan.")
                            .font(.system(size: 14))
                            .opacity(0.8)
                    }
                    .padding(.vertical)

                }
                .padding(.top)
                .padding(.horizontal,25)
                
                
                
                
                
            }
            .padding(.bottom,100)
            
        }
        .background(Color("bg"))
        .foregroundColor(.white)
        .ignoresSafeArea(edges: .all)
    }
}

struct SeriesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SeriesDetailView()
    }
}

