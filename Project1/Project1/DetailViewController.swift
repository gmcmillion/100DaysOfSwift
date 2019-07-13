//
//  DetailViewController.swift
//  Project1
//
//  Created by Greggory Mcmillion on 7/11/19.
//  Copyright © 2019 Greggory Mcmillion. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  @IBOutlet var imageView: UIImageView!
  var selectedImage: String?
  var selectedPictureNumber = 0
  var totalPictures = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "Picture \(selectedPictureNumber) of \(totalPictures)"
    navigationItem.largeTitleDisplayMode = .never
    
    if let imageToLoad = selectedImage {
      imageView.image = UIImage(named: imageToLoad)
    }
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.hidesBarsOnTap = true
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    navigationController?.hidesBarsOnTap = false
  }
}
