//
//  MockNetworkManager.swift
//  RickAndMorty
//
//  Created by yaswanth reddy on 6/9/26.
//

final class MockNetworkManager: Sendable, NetworkProtocol {
    static let sharedInstance = MockNetworkManager()
    private init() {}
    
    func getDataFromServer(for url: String) -> [Character?] {
        var productList:[Character] = []
 
        let product1 = Character(
            id: 1,
            name: "Rick Sanchez",
            status: "Alive",
            species: "Human",
            type: "",
            gender: "Male",
            origin: OriginLocation(
                name: "Earth (C-137)",
                url: "https://rickandmortyapi.com/api/location/1"
            ),
            location: OriginLocation(
                name: "Citadel of Ricks",
                url: "https://rickandmortyapi.com/api/location/3"
            ),
            image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
            url: "https://rickandmortyapi.com/api/character/1",
            created: "2017-11-04T18:48:46.250Z"
        )
        let product2 = Character(
            id: 1,
            name: "Rick Sanchez",
            status: "Alive",
            species: "Human",
            type: "",
            gender: "Male",
            origin: OriginLocation(
                name: "Earth (C-137)",
                url: "https://rickandmortyapi.com/api/location/1"
            ),
            location: OriginLocation(
                name: "Citadel of Ricks",
                url: "https://rickandmortyapi.com/api/location/3"
            ),
            image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
            url: "https://rickandmortyapi.com/api/character/1",
            created: "2017-11-04T18:48:46.250Z"
        )
        
        productList.append(product1)
        productList.append(product2)
       
        return productList
    }
}
