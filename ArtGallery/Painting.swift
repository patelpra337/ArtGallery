//
//  Painting.swift
//  ArtGallery
//
//  Created by patelpra on 5/4/19.
//  Copyright © 2019 Pravin Patel. All rights reserved.
//

import Foundation
import UIKit

class Painting {
    let image: UIImage
    var isLiked: Bool
    
    init(image: UIImage, isLiked: Bool = false) {
        self.isLiked = isLiked
        self.image = image
    }
}
