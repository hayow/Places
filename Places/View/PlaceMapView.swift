




import SwiftUI
import MapKit





struct PlaceMapView: View {
    @State var region: MKCoordinateRegion
    let places: [Place]
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: places) { place in
            MapMarker(coordinate: place.coordinate)
        }
        .ignoresSafeArea()
    }
}





struct PlaceMapView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceMapView(region: MKCoordinateRegion(center: Place.example.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)), places: [Place.example])
    }
}





