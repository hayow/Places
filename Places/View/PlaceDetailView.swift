




import SwiftUI
import MapKit





struct PlaceDetailView: View {
    
    let place: Place
    
    var body: some View {
        
        // MARK: GeometryReader
        GeometryReader { outerProxy in
            
            placeDetailView(outerProxy)
            
        }
        // MARK: GeometryReader
    }
}





extension PlaceDetailView {
    
    
    // MARK: placeDetailView
    private func placeDetailView(_ outerProxy: GeometryProxy) -> some View {
        return ScrollView(showsIndicators: false) {
            
            VStack(alignment: HorizontalAlignment.leading, spacing: 0) {
                
                coverImage(outerProxy)
                VStack(alignment: HorizontalAlignment.leading, spacing: 0) {
                    
                    profile(outerProxy)
                    Divider()
                    description
                    Divider()
                    images(outerProxy)
                    Divider()
                    map(outerProxy)
                    Divider()
                    footer
                }
                .background(Color.white)
                
                
            }
            .background(Color.white)
        }
    }
    // MARK: placeDetailView
    
    
    // MARK: coverImage
    private func coverImage(_ outerProxy: GeometryProxy) -> some View {
        return GeometryReader { innerProxy in
            Image(place.images[0])
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .offset(y: -innerProxy.frame(in: CoordinateSpace.global).minY)
                .frame(width: outerProxy.size.width, height: innerProxy.frame(in: CoordinateSpace.global).minY > 0 ? outerProxy.size.width + innerProxy.frame(in: CoordinateSpace.global).minY: outerProxy.size.width)
        }
        .frame(height: outerProxy.size.width)
    }
    // MARK: coverImage
    
    
    // MARK: profile
    private func profile(_ outerProxy: GeometryProxy) -> some View {
        return HStack(alignment: VerticalAlignment.top) {
            Image(place.images[0])
                .resizable()
                .aspectRatio(contentMode: ContentMode.fit)
                .frame(width: outerProxy.size.width / 6, height: outerProxy.size.width / 6)
                .cornerRadius(10)
            VStack(alignment: HorizontalAlignment.leading) {
                Text(place.name)
                    .font(Font.title)
                    .fontWeight(Font.Weight.bold)
                
                Text("\(place.city), \(place.country)")
                    .font(Font.title3)
                    .fontWeight(Font.Weight.light)
                    .foregroundColor(Color.secondary)
            }
        }
        .padding()
    }
    // MARK: profile
    
    
    // MARK: description
    private var description: some View {
        return VStack(alignment: HorizontalAlignment.leading) {
            Text("Description")
                .fontWeight(Font.Weight.bold)
            Divider()
            Text(place.description)
        }
        .padding()
    }
    // MARK: description
    
    
    // MARK: images
    private func images(_ outerProxy: GeometryProxy) -> some View {
        
        return VStack(alignment: HorizontalAlignment.leading) {
            VStack(alignment: HorizontalAlignment.leading) {
                Text("Images")
                    .fontWeight(Font.Weight.bold)
                Divider()
            }
            .padding()
            
            ScrollView(Axis.Set.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(place.images, id: \.self) { image in
                        NavigationLink {
                            Image(image)
                        } label: {
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: ContentMode.fit)
                                .frame(width: outerProxy.size.width / 2, height: outerProxy.size.width / 2)
                                .cornerRadius(10)
                        }

                    }
                }
                .padding(Edge.Set.horizontal)
            }
        }
        .padding(Edge.Set.vertical)
    }
    // MARK: images
    
    
    // MARK: map
    private func map(_ outerProxy: GeometryProxy) -> some View {
        return VStack(alignment: HorizontalAlignment.leading) {
            VStack(alignment: HorizontalAlignment.leading) {
                Text("Map")
                    .fontWeight(Font.Weight.bold)
                Divider()
            }
            .padding()
            NavigationLink {
                PlaceMapView(region: MKCoordinateRegion(center: place.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)), places: [place])
                    .ignoresSafeArea()
            } label: {
                PlaceMapView(region: MKCoordinateRegion(center: place.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)), places: [place])
                    .cornerRadius(10)
                    .padding(Edge.Set.horizontal)
                    .frame(width: outerProxy.size.width, height: outerProxy.size.width)
            }

        }
        .padding(Edge.Set.bottom)
    }
    // MARK: map
    
    
    // MARK: footer
    private var footer: some View {
        return HStack {
            Spacer()
            VStack {
                Text("Places App")
                    .fontWeight(Font.Weight.bold)
                Text("All rights reserved copyright ©")
                    .font(Font.caption)
                    .fontWeight(Font.Weight.light)
                    .foregroundColor(Color.secondary)
            }
            Spacer()
        }
        .padding()
    }
    // MARK: footer
    
    
}





struct PlaceDetailView_Previews: PreviewProvider {
    static var previews: some View { PlaceDetailView(place: Place.example) }
}





