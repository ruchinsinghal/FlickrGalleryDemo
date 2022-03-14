//
//  PhotoGalleryTableCell.swift
//  FlickrPhotoGallery
//
//  Created by Ruchin Singhal on 01/03/22.
//

import UIKit

class PhotoGalleryTableCell: UITableViewCell {
  
  @IBOutlet weak var imgViewGalleryImage: UIImageView!
  @IBOutlet weak var lblImageTitle: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }
  
  func configureCell(withPhotoGalleryItem photoGalleryItem: PhotoGalleryItem, forIndexPath indexPath: IndexPath) {
    
    lblImageTitle.text = photoGalleryItem.title
    
    let strImgViewURL = "\(IMAGE_BASE_URL)/\(photoGalleryItem.server)/\(photoGalleryItem.id)_\(photoGalleryItem.secret)_q.jpg"
    guard let imgViewUrl = URL(string: strImgViewURL) else { return }
    imgViewGalleryImage.af.setImage(withURL: imgViewUrl, placeholderImage: UIImage(named: "icon_placeholder"))
  }
}
