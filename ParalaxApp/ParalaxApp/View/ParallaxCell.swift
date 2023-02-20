//
//  ParallaxCell.swift
//  ParalaxApp
//
//  Created by Anderson Sales on 20/02/23.
//

import UIKit

class ParallaxCell: UITableViewCell {

    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(with image: UIImage, and label: String) {
        cellImage.image = image
        cellLabel.text = label
    }
}
