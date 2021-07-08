//
//  PaintingController.swift
//  ArtGallery
//
//  Created by patelpra on 5/4/19.
//  Copyright © 2019 Pravin Patel. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    var paintings: [Painting] = []
    
    init() {
        loadPaintingFromAssets()
    }
    
    
    func loadPaintingFromAssets() {
        for i in 1...12 {
            let image: String = "Image\(i)"
            guard let UIImage = UIImage(named: image) else { return }
            let painting = Painting(image: UIImage)
            paintings.append(painting)
        }
    }
    
    func toggleIsLike(for painting: Painting) {
        painting.isLiked = !painting.isLiked
    }
    
}
