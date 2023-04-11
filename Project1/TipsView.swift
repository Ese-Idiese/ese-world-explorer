//
//  TipsView.swift
//  Project1
//
//  Created by Mac User on 4/10/23.
//

import SwiftUI

struct TipsView: View {
    var tips = [Tips]()
    
    init(){
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tips].self, from: data)
    }
    var body: some View {
        NavigationView{
            List(tips,id: \.text, children: \.children){tip in
                if tip.children != nil {
                    Label(tip.text,
                          systemImage: "quote.bubble")
                        .font(.headline)
                        
                }else{
                    Text(tip.text)
                }
                
            }
            
            .navigationTitle("Tips")
            
        }
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
