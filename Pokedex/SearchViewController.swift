//
//  SearchViewController.swift
//  Pokedex
//
//  Created by Candice Ye on 9/28/16.
//  Copyright © 2016 trainingprogram. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    @IBOutlet weak var typesCollectionView: UICollectionView!
    
    
    
    @IBOutlet weak var randomizePoke: UIButton!
    
    struct elements {
        var elementType: String
    }
    var allElements: [elements] = []
    
    var imageElements: [UIImage] = [#imageLiteral(resourceName: "bug"), #imageLiteral(resourceName: "dark"), #imageLiteral(resourceName: "dragon"), #imageLiteral(resourceName: "electric"), #imageLiteral(resourceName: "fairy"), #imageLiteral(resourceName: "fighting"), #imageLiteral(resourceName: "fire"), #imageLiteral(resourceName: "flying"), #imageLiteral(resourceName: "ghost"), #imageLiteral(resourceName: "grass"), #imageLiteral(resourceName: "ground"), #imageLiteral(resourceName: "ice"), #imageLiteral(resourceName: "normal"), #imageLiteral(resourceName: "poison"), #imageLiteral(resourceName: "psychic"), #imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "steel"), #imageLiteral(resourceName: "water")]
    var diffElements: [String] = ["Bug", "Dark", "Dragon", "Electric", "Fairy", "Fighting", "Fire", "Flying", "Ghost", "Grass", "Ground", "Ice", "Normal", "Posion", "Psychic", "Rock", "Steel", "Water"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        typesCollectionView.delegate = self
        typesCollectionView.dataSource = self
    }
    
    //number of rows
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return diffElements.count
    }
    
    //number of columns
    /*func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }*/
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let eachCell = collectionView.dequeueReusableCell(withReuseIdentifier: "eachButton", for: indexPath) as! TypesButtonCollectionViewCell
        eachCell.backgroundColor = UIColor.blue
        eachCell.element.setBackgroundImage(imageElements[indexPath.item], for: .normal)
        //eachCell.element.setImage(<#T##image: UIImage?##UIImage?#>, for: <#T##UIControlState#>)
        eachCell.element.setTitle(diffElements[indexPath.item], for: .normal)
        return eachCell
        
    }
    
    /*func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        //let cl = cell as! TypesButtonCollectionViewCell
        //cl.eachType.text = diffElements[indexPath]
    }*/
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
