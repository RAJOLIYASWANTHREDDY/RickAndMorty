//
//  RickyMontyTableViewCell.swift
//  RickAndMorty
//
//  Created by yaswanth reddy on 5/29/26.
//

import UIKit

class RickyMontyTableViewCell: UITableViewCell {
    
    // MARK: - Outlets

    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var statusSpecies: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: - Selection
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Configuration
    
    func configure(with character: Character) {
            nameLabel.text = character.name
            statusSpecies.text = "\(character.status) • \(character.species)"
            locationLabel.text = character.location.name
            characterImage.image = UIImage(named: "\(character.id)")
        }
    

}
