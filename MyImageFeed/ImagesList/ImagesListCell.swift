//
//  ImagesListCell.swift
//  MyImageFeed
//
//  Created by Alexey on 09.03.2023.
//

import UIKit

final class ImagesListCell: UITableViewCell {

    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var dateLabel: UILabel!
    static let reuseIdentifier = "ImagesListCell"
}
