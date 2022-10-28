




import Foundation
import MapKit





class Places: ObservableObject {
    @Published var places: [Place] = DataServices.data
}





