//
//  LocationView.swift
//  Project1
//
//  Created by Mac User on 3/30/23.
//

import Foundation

struct Location : Decodable, Identifiable{
    let id: Int
    let name : String
    let country : String
    let description : String
    let heroPicture : String
    let more: String
    let latitude : Double
    let longitude : Double
    let advisory : String
    
    
    
   static let example  = Location(id: 1, name: "The Highlands", country: "United Kingdom", description: "A great place to be", heroPicture: "highlands", more: " more text", latitude: 57.1200, longitude: -4.7100, advisory: "beware of the birds")
    
   //
}
