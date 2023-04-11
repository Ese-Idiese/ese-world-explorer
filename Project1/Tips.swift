//
//  Tips.swift
//  Project1
//
//  Created by Mac User on 4/10/23.
//

import Foundation

struct Tips : Decodable{
    
    let text:String
    let children: [Tips]?
}
