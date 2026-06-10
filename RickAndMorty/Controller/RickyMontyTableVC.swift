//
//  RickyMontyTableVC.swift
//  RickAndMorty
//
//  Created by yaswanth reddy on 5/29/26.
//

import UIKit

protocol CharctersRickandMonty{
    func rickandMontyChar()
}

var isInternetAvailable = false
var objNetworkManager: NetworkProtocol?

class RickyMontyTableVC: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var rickytable: UITableView!
    // MARK: - Properties
    var characters: [Character] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        rickytable.dataSource =  self
        rickandMontyChar()

        // Do any additional setup after loading the view.
    }
    

}

// MARK: - UITableViewDataSource

extension RickyMontyTableVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell( withIdentifier: TableViewCellIdentifier.rickyMontyCell.rawValue, for: indexPath) as? RickyMontyTableViewCell else {
                   return UITableViewCell()
               }
               let character = characters[indexPath.row]
            
               cell.configure(with: character)

               return cell
    }
    
    
}

// MARK: - CharctersRickandMonty

extension RickyMontyTableVC: CharctersRickandMonty{
    func rickandMontyChar(){
        var mockCharacters: [Character] = [
            Character(
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
            ),
            
            Character(
                id: 2,
                name: "Morty Smith",
                status: "Alive",
                species: "Human",
                type: "",
                gender: "Male",
                origin: OriginLocation(
                    name: "unknown",
                    url: ""
                ),
                location: OriginLocation(
                    name: "Citadel of Ricks",
                    url: "https://rickandmortyapi.com/api/location/3"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/2.jpeg",
                url: "https://rickandmortyapi.com/api/character/2",
                created: "2017-11-04T18:50:21.651Z"
            ),
            
            Character(
                id: 3,
                name: "Summer Smith",
                status: "Alive",
                species: "Human",
                type: "",
                gender: "Female",
                origin: OriginLocation(
                    name: "Earth (Replacement Dimension)",
                    url: "https://rickandmortyapi.com/api/location/20"
                ),
                location: OriginLocation(
                    name: "Earth (Replacement Dimension)",
                    url: "https://rickandmortyapi.com/api/location/20"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/3.jpeg",
                url: "https://rickandmortyapi.com/api/character/3",
                created: "2017-11-04T19:09:56.428Z"
            ),
            
            Character(
                id: 4,
                name: "Beth Smith",
                status: "Alive",
                species: "Human",
                type: "",
                gender: "Female",
                origin: OriginLocation(
                    name: "Earth (Replacement Dimension)",
                    url: "https://rickandmortyapi.com/api/location/20"
                ),
                location: OriginLocation(
                    name: "Earth (Replacement Dimension)",
                    url: "https://rickandmortyapi.com/api/location/20"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/4.jpeg",
                url: "https://rickandmortyapi.com/api/character/4",
                created: "2017-11-04T19:22:43.665Z"
            ),
            
            Character(
                id: 5,
                name: "Jerry Smith",
                status: "Alive",
                species: "Human",
                type: "",
                gender: "Male",
                origin: OriginLocation(
                    name: "Earth (Replacement Dimension)",
                    url: "https://rickandmortyapi.com/api/location/20"
                ),
                location: OriginLocation(
                    name: "Earth (Replacement Dimension)",
                    url: "https://rickandmortyapi.com/api/location/20"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/5.jpeg",
                url: "https://rickandmortyapi.com/api/character/5",
                created: "2017-11-04T19:26:56.301Z"
            ),
            
            Character(
                id: 6,
                name: "Abadango Cluster Princess",
                status: "Alive",
                species: "Alien",
                type: "",
                gender: "Female",
                origin: OriginLocation(
                    name: "Abadango",
                    url: "https://rickandmortyapi.com/api/location/2"
                ),
                location: OriginLocation(
                    name: "Abadango",
                    url: "https://rickandmortyapi.com/api/location/2"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/6.jpeg",
                url: "https://rickandmortyapi.com/api/character/6",
                created: "2017-11-04T19:50:28.250Z"
            ),
            
            Character(
                id: 7,
                name: "Abradolf Lincler",
                status: "unknown",
                species: "Human",
                type: "Genetic experiment",
                gender: "Male",
                origin: OriginLocation(
                    name: "Earth (Replacement Dimension)",
                    url: "https://rickandmortyapi.com/api/location/20"
                ),
                location: OriginLocation(
                    name: "Testicle Monster Dimension",
                    url: "https://rickandmortyapi.com/api/location/21"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/7.jpeg",
                url: "https://rickandmortyapi.com/api/character/7",
                created: "2017-11-04T19:59:20.523Z"
            ),
            
            Character(
                id: 8,
                name: "Adjudicator Rick",
                status: "Dead",
                species: "Human",
                type: "",
                gender: "Male",
                origin: OriginLocation(
                    name: "unknown",
                    url: ""
                ),
                location: OriginLocation(
                    name: "Citadel of Ricks",
                    url: "https://rickandmortyapi.com/api/location/3"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/8.jpeg",
                url: "https://rickandmortyapi.com/api/character/8",
                created: "2017-11-04T20:03:34.737Z"
            ),
            
            Character(
                id: 9,
                name: "Agency Director",
                status: "Dead",
                species: "Human",
                type: "",
                gender: "Male",
                origin: OriginLocation(
                    name: "Earth (Replacement Dimension)",
                    url: "https://rickandmortyapi.com/api/location/20"
                ),
                location: OriginLocation(
                    name: "Earth (Replacement Dimension)",
                    url: "https://rickandmortyapi.com/api/location/20"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/9.jpeg",
                url: "https://rickandmortyapi.com/api/character/9",
                created: "2017-11-04T20:06:54.976Z"
            ),
            
            Character(
                id: 10,
                name: "Alan Rails",
                status: "Dead",
                species: "Human",
                type: "Superhuman (Ghost trains summoner)",
                gender: "Male",
                origin: OriginLocation(
                    name: "unknown",
                    url: ""
                ),
                location: OriginLocation(
                    name: "Worldender's lair",
                    url: "https://rickandmortyapi.com/api/location/4"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/10.jpeg",
                url: "https://rickandmortyapi.com/api/character/10",
                created: "2017-11-04T20:19:09.017Z"
            ),
            
            Character(
                id: 11,
                name: "Albert Einstein",
                status: "Dead",
                species: "Human",
                type: "",
                gender: "Male",
                origin: OriginLocation(
                    name: "Earth (C-137)",
                    url: "https://rickandmortyapi.com/api/location/1"
                ),
                location: OriginLocation(
                    name: "Earth (Replacement Dimension)",
                    url: "https://rickandmortyapi.com/api/location/20"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/11.jpeg",
                url: "https://rickandmortyapi.com/api/character/11",
                created: "2017-11-04T20:20:20.965Z"
            ),
            
            Character(
                id: 12,
                name: "Alexander",
                status: "Dead",
                species: "Human",
                type: "",
                gender: "Male",
                origin: OriginLocation(
                    name: "Earth (C-137)",
                    url: "https://rickandmortyapi.com/api/location/1"
                ),
                location: OriginLocation(
                    name: "Anatomy Park",
                    url: "https://rickandmortyapi.com/api/location/5"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/12.jpeg",
                url: "https://rickandmortyapi.com/api/character/12",
                created: "2017-11-04T20:32:33.144Z"
            ),
            
            Character(
                id: 13,
                name: "Alien Googah",
                status: "unknown",
                species: "Alien",
                type: "",
                gender: "unknown",
                origin: OriginLocation(
                    name: "unknown",
                    url: ""
                ),
                location: OriginLocation(
                    name: "Earth (Replacement Dimension)",
                    url: "https://rickandmortyapi.com/api/location/20"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/13.jpeg",
                url: "https://rickandmortyapi.com/api/character/13",
                created: "2017-11-04T20:33:30.779Z"
            ),
            
            Character(
                id: 14,
                name: "Alien Morty",
                status: "unknown",
                species: "Alien",
                type: "",
                gender: "Male",
                origin: OriginLocation(
                    name: "unknown",
                    url: ""
                ),
                location: OriginLocation(
                    name: "Citadel of Ricks",
                    url: "https://rickandmortyapi.com/api/location/3"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/14.jpeg",
                url: "https://rickandmortyapi.com/api/character/14",
                created: "2017-11-04T20:51:31.373Z"
            ),
            
            Character(
                id: 15,
                name: "Alien Rick",
                status: "unknown",
                species: "Alien",
                type: "",
                gender: "Male",
                origin: OriginLocation(
                    name: "unknown",
                    url: ""
                ),
                location: OriginLocation(
                    name: "Citadel of Ricks",
                    url: "https://rickandmortyapi.com/api/location/3"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/15.jpeg",
                url: "https://rickandmortyapi.com/api/character/15",
                created: "2017-11-04T20:56:13.215Z"
            ),
            
            Character(
                id: 16,
                name: "Amish Cyborg",
                status: "Dead",
                species: "Alien",
                type: "Parasite",
                gender: "Male",
                origin: OriginLocation(
                    name: "unknown",
                    url: ""
                ),
                location: OriginLocation(
                    name: "Earth (Replacement Dimension)",
                    url: "https://rickandmortyapi.com/api/location/20"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/16.jpeg",
                url: "https://rickandmortyapi.com/api/character/16",
                created: "2017-11-04T21:12:45.235Z"
            ),
            
            Character(
                id: 17,
                name: "Annie",
                status: "Alive",
                species: "Human",
                type: "",
                gender: "Female",
                origin: OriginLocation(
                    name: "Earth (C-137)",
                    url: "https://rickandmortyapi.com/api/location/1"
                ),
                location: OriginLocation(
                    name: "Anatomy Park",
                    url: "https://rickandmortyapi.com/api/location/5"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/17.jpeg",
                url: "https://rickandmortyapi.com/api/character/17",
                created: "2017-11-04T22:21:24.481Z"
            ),
            
            Character(
                id: 18,
                name: "Antenna Morty",
                status: "Alive",
                species: "Human",
                type: "Human with antennae",
                gender: "Male",
                origin: OriginLocation(
                    name: "unknown",
                    url: ""
                ),
                location: OriginLocation(
                    name: "Citadel of Ricks",
                    url: "https://rickandmortyapi.com/api/location/3"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/18.jpeg",
                url: "https://rickandmortyapi.com/api/character/18",
                created: "2017-11-04T22:25:29.008Z"
            ),
            
            Character(
                id: 19,
                name: "Antenna Rick",
                status: "unknown",
                species: "Human",
                type: "Human with antennae",
                gender: "Male",
                origin: OriginLocation(
                    name: "unknown",
                    url: ""
                ),
                location: OriginLocation(
                    name: "unknown",
                    url: ""
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/19.jpeg",
                url: "https://rickandmortyapi.com/api/character/19",
                created: "2017-11-04T22:28:13.756Z"
            ),
            
            Character(
                id: 20,
                name: "Ants in my Eyes Johnson",
                status: "unknown",
                species: "Human",
                type: "Human with ants in his eyes",
                gender: "Male",
                origin: OriginLocation(
                    name: "unknown",
                    url: ""
                ),
                location: OriginLocation(
                    name: "Interdimensional Cable",
                    url: "https://rickandmortyapi.com/api/location/6"
                ),
                image: "https://rickandmortyapi.com/api/character/avatar/20.jpeg",
                url: "https://rickandmortyapi.com/api/character/20",
                created: "2017-11-04T22:34:53.659Z"
            )
        ]
        
        characters = mockCharacters
        rickytable.reloadData()
    }
    
    
}

extension RickyMontyTableVC: NetworkProtocol {
    func getDataFromServer(for url: String) -> [Character?]{
        if isInternetAvailable {
            objNetworkManager = NetworkManager.sharedInstance
        }
        else {
            objNetworkManager = MockNetworkManager.sharedInstance
        }
        return objNetworkManager?.getDataFromServer(for: "www.nwt.com") ?? []
    }
}
