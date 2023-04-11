//
//  ContentView.swift
//  Project1
//
//  Created by Mac User on 3/29/23.
//

import SwiftUI

struct ContentView: View {
    let location : Location
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.description)
                .frame(width: 380)
                .font(.title3)
                .padding(.bottom)
                .foregroundColor(.primary)
            
            Text(location.advisory)
                .multilineTextAlignment(.center)
                .font(.title3)
                .padding(.top)
                .bold()
                .padding(.horizontal)
            
            Text(location.more)
                .padding(.top)
                .font(.title3)
                .frame(width: 380)
                .foregroundColor(.primary)
            
                
                
            
        } .navigationTitle("Discover")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView(location: locations().places[6])
        }
    }
}
