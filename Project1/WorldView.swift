//
//  WorldViev.swift
//  Project1
//
//  Created by Mac User on 4/9/23.
//
import MapKit
import SwiftUI

struct WorldView: View {
    @EnvironmentObject var location : locations
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: location.places){
            location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)){
                NavigationLink(destination:ContentView(location:location)){
                    Image(location.country)
                        .resizable()
                        .frame(width: 80, height: 40)
                        .cornerRadius(8)
                        .shadow(radius: 3)
                }
            }
            
        }
            .navigationTitle("Locations")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
