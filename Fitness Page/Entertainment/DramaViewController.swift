//
//  DramaViewController.swift
//  entertainmentPage
//
//  Created by student on 7/25/18.
//  Copyright © 2018 Girls Who Code. All rights reserved.
//

import UIKit

class DramaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{

    var dramaArray = [UIImage(named: "21"), UIImage(named: "hiddenFigures"), UIImage(named: "shawshankRedemption"), UIImage(named: "room"), UIImage(named: "theBlindSide"), UIImage(named: "12YearsASlave"), ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return dramaArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DramaCollectionViewCell", for: indexPath) as! DramaCollectionViewCell
        
        cell.dramaImage.image = dramaArray[indexPath.row]
        
        return cell
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
