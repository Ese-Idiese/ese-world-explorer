//
//  AppView.swift
//  Project1
//
//  Created by Mac User on 4/9/23.
//

import SwiftUI

struct AppView: View {
    @StateObject var Locations = locations()
    var body: some View {
        TabView{
            NavigationView{
                ContentView(location: Locations.primary)
            }
            .tabItem{
                Image(systemName: "airplane.circle.fill")
                Text("Discover")
            }
            
            NavigationView{
                WorldView()
            }
            .tabItem{
                Image(systemName: "star.fill")
                Text("Locations")
            }
            
            NavigationView{
                TipsView()
            }
            .tabItem{
                Image(systemName: "list.bullet")
                Text("tips")
            }
        }
        
       
        
        .environmentObject(Locations)
        
       
    }
    
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
