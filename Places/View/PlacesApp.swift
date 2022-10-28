




import SwiftUI





@main struct PlacesApp: App {
    @StateObject var places: Places = Places()
    
    var body: some Scene { WindowGroup { HomeView(places: places) } }
    
}





