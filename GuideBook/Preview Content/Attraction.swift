//
//  Attraction.swift
//  GuideBook
//
//  Created by 최욱진 on 9/2/25.
//

import Foundation

struct Attraction: Identifiable, Decodable {
    
    let  id: UUID = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
    
}
