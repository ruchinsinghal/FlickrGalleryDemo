//
//  PhotoPreviewViewC.swift
//  FlickrPhotoGallery
//
//  Created by Ruchin Singhal on 01/03/22.
//

import UIKit

class PhotoPreviewViewC: UIViewController {
  
  let photoPreviewViewModel = PhotoPreviewViewModel()
  
  @IBOutlet weak var imgViewPreviewImage: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureView()
  }
  
  private func configureView() {
    let strImgViewURL = "\(IMAGE_BASE_URL)/\(photoPreviewViewModel.photoGalleryItem.server)/\(photoPreviewViewModel.photoGalleryItem.id)_\(photoPreviewViewModel.photoGalleryItem.secret)_c.jpg"
    guard let imgViewUrl = URL(string: strImgViewURL) else { return }
    imgViewPreviewImage.af.setImage(withURL: imgViewUrl, placeholderImage: UIImage(named: "icon_placeholder"))
  }
  
  @IBAction func tapClose(_ sender: UIButton) {
    self.dismiss(animated: true) {
    }
  }
}
