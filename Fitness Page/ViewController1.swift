//
//  ViewController.swift
//  entertainmentPage
//
//  Created by student on 7/24/18.
//  Copyright © 2018 Girls Who Code. All rights reserved.
//

import UIKit

class ViewController1: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{
    
    
    var romanceArray = [UIImage(named: "ourTimes"), UIImage(named: "loveActually"), UIImage(named: "whenHarryMetSally"), UIImage(named: "howlsMovingCastle"), UIImage(named: "theNotebook"), UIImage(named: "titanic")]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return romanceArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCollectionViewCell", for: indexPath) as! MovieCollectionViewCell
        
        cell.movieImage.image = romanceArray[indexPath.row]
        
        return cell
    }
    
    

    
    
}

