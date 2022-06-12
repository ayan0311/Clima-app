//
//  Results.swift
//  Hacker News
//
//  Created by Ayan Sarkar on 11/06/22.
//

import Foundation

struct Results : Decodable {
    let hits : [Post]
}

struct Post : Decodable, Identifiable {
    var id : String {
        return objectID
    }
    let objectID : String
    let url : String?
    let points : Int
    let title : String
}
