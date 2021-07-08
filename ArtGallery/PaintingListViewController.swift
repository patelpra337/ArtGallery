//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by patelpra on 5/4/19.
//  Copyright © 2019 Pravin Patel. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PaintingTableViewCellDelegate {
    func likeButtonTapped(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        let painting = paintingController.paintings[indexPath.row]
        paintingController.toggleIsLike(for: painting)
        tableView.reloadRows(at: [indexPath], with: .fade)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath) as? PaintingTableViewCell else { return UITableViewCell() }
        
        let painting = paintingController.paintings[indexPath.row]
        cell.delegat = self
        cell.painting = painting
        
        return cell
    }
 
    let paintingController = PaintingController()
}
