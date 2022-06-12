//
//  SwiftUIView.swift
//  Hacker News
//
//  Created by Ayan Sarkar on 12/06/22.
//

import SwiftUI

struct DetailView: View {
    
    let url : String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

