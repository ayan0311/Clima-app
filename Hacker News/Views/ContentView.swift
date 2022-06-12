//
//  ContentView.swift
//  Hacker News
//
//  Created by Ayan Sarkar on 11/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var network = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(network.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4XOR News")
        }
        .onAppear{
                self.network.fetchData()
    }
 
        }
        
}

