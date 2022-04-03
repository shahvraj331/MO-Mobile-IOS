//
//  HomeScreenViewController.swift
//  RestaurantManagement
//
//  Created by Yagnik Bavishi on 02/04/22.
//

import UIKit


struct MenuItem {
    let menuId: Int
    let dishName: String
    let dishType: String
    let price: Int
    let buyFrequency: Int
}

class HomeScreenViewController: UIViewController, Storyboarded {

    // MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var specialOfferCollectionView: UICollectionView!
    
    //MARK: - Variables
    var coordinator: HomeScreenCoordinator?
    let reuseIdentifier = "cell"
    let identifireCollectionView = "specialOfferCell"
    var items = ["foodItemImage", "foodItemImage", "foodItemImage", "foodItemImage"]
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        specialOfferCollectionView.dataSource = self
    }

}// End of Class

//MARK: - UICollectionViewDataSource
extension HomeScreenViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return items.count
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as? PopulerFoodCollectionViewCell else {
            return UICollectionViewCell()
        }
        //cell.imgFoodImage?.image = UIImage(named: items[indexPath.row])
        cell.imgFoodImage?.image = UIImage(named: "foodItemImage")
        return cell
    }
    
}// End of Extension
