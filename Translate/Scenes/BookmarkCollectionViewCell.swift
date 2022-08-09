//
//  BookmarkCollectionViewCell.swift
//  Translate
//
//  Created by 박지용 on 2022/08/09.
//

import UIKit
import SnapKit

final class BookmarkCollectionViewCell: UICollectionViewCell {
    static let identifier = "BookmarkCollectionViewCell"
    
    func setup() {
        backgroundColor = .systemBackground
        layer.cornerRadius = 12.0
    }
}
