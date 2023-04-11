//
//  Locations.swift
//  Project1
//
//  Created by Mac User on 4/7/23.
//

import Foundation
class locations : ObservableObject {
    let places : [Location]
    var primary: Location{
        places[0]
    }
    
    init(){
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
