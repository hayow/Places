




import Foundation
import MapKit





class DataServices {
    static let data: [Place] = [
        Place(id: 1,
              name: "Colosseum",
              city: "Rome",
              country: "Italy",
              description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
              coordinate: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
              images: [
                "rome-colosseum-1",
                "rome-colosseum-2",
                "rome-colosseum-3"
              ]
             ),
        
        
        Place(id: 2,
              name: "Pantheon",
              city: "Rome",
              country: "Italy",
              description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
              coordinate: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4769),
              images: [
                "rome-pantheon-1",
                "rome-pantheon-2",
                "rome-pantheon-3"
              ]
             ),
        
        
        Place(id: 3,
              name: "Trevi Fountain",
              city: "Rome",
              country: "Italy",
              description: "The Trevi Fountain is a fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.",
              coordinate: CLLocationCoordinate2D(latitude: 41.9009, longitude: 12.4833),
              images: [
                "rome-trevifountain-1",
                "rome-trevifountain-2",
                "rome-trevifountain-3"
              ]
             ),
        
        
        Place(id: 4,
              name: "Eiffel Tower",
              city: "Paris",
              country: "France",
              description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
              coordinate: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945),
              images: [
                "paris-eiffeltower-1",
                "paris-eiffeltower-2"
              ]
             ),
        
        
        Place(id: 5,
              name: "Louvre Museum",
              city: "Paris",
              country: "France",
              description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
              coordinate: CLLocationCoordinate2D(latitude: 48.8606, longitude: 2.3376),
              images: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3"
              ]
             ),
    ]
    
    
}





