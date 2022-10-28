




import SwiftUI





struct HomeView: View {
    @ObservedObject var places: Places
    
    var body: some View {
        
        NavigationView {
            TabView {
                
                ForEach(places.places) { place in
                    PlaceDetailView(place: place)
                }
            }
            .tabViewStyle(PageTabViewStyle.page(indexDisplayMode: PageTabViewStyle.IndexDisplayMode.always))
            .indexViewStyle(PageIndexViewStyle.page(backgroundDisplayMode: PageIndexViewStyle.BackgroundDisplayMode.always))
        }
    }
}





struct HomeView_Previews: PreviewProvider {
    static var previews: some View { HomeView(places: Places()) }
}





