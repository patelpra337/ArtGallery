//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by patelpra on 5/4/19.
//  Copyright © 2019 Pravin Patel. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonTapped(on cell: PaintingTableViewCell)
}
class PaintingTableViewCell: UITableViewCell {
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    @IBAction func likeButtonTapped(_ sender: Any) {
        delegat?.likeButtonTapped(on: self)
    }
    
    @IBOutlet weak var paintingImage: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    weak var delegat: PaintingTableViewCellDelegate?
    
    func updateViews() {
        guard let painting = painting else { return }
        paintingImage.image = painting.image
        if(painting.isLiked) {
            likeButton.setTitle("Unlike", for: .normal)
        } else {
            likeButton.setTitle("Like", for: .normal)
        }
        
    }
}


