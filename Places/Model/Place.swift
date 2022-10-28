




import Foundation
import MapKit





struct Place: Identifiable {
    let id: Int
    let name, city, country, description: String
    let coordinate: CLLocationCoordinate2D
    let images: [String]
}





extension Place {
    static let example: Place = DataServices.data[0]
}





