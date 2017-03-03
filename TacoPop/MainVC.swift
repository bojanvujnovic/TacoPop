 //
//  MainVC.swift
//  TacoPop
//
//  Created by Mac on 3/2/17.
//  Copyright © 2017 Boki. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceProtocol {
    
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var dataService = DataService.instance
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.dataService.delegate = self
        self.dataService.loadDeliciousTacoData()
        dataService.tacoArray.shuffle() 

        headerView.addDropShadow()
        //Old way of registering a NIb
//        let nib = UINib(nibName: "TacoCell", bundle: nil)
//        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
        
        collectionView.register(TacoCell())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func deliciousTacoDataLoaded() {
        print("Delisious Taco Data Loaded.")
        collectionView.reloadData()
    }

}
 
 extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataService.tacoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //Old Way
//        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
//            let taco = dataService.tacoArray[indexPath.row]
//            cell.configureCell(taco: taco)
//            return cell
//        } else {
//            return UICollectionViewCell()
//        }        
        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
        let taco = dataService.tacoArray[indexPath.row]
        cell.configureCell(taco: taco)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
    }
    
    
 }
 
