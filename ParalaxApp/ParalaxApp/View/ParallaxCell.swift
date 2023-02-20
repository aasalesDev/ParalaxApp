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
        configureParallax()
    }

    func configureCell(with image: UIImage, and label: String) {
        cellImage.image = image
        cellLabel.text = label
    }
    
    func configureParallax() {
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max

        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        cellImage.addMotionEffect(motionEffectGroup)
    }
}
