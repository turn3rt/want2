//
//  HomeActivityDetailVC.swift
//  Want2
//
//  Created by Turner Thornberry on 2/16/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit
import MapKit

class HomeActivityDetailVC: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var promoPhoto: UIImageView!
    @IBOutlet weak var mapView: MKMapView!

    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.isHidden = false
        //promoPhoto.isHidden = true
//
//
//        let mapView = MKMapView()
//        mapView.frame = promoPhoto.frame
//        mapView.bounds = promoPhoto.bounds
//        mapView.bounds.origin = promoPhoto.bounds.origin
//
//
//        view.addSubview(mapView)
        
        
    }

}

//MARK: - Collection View Method overrides
extension HomeActivityDetailVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PersonHeadshotCVCell", for: indexPath)
        return cell
    }
    
}
