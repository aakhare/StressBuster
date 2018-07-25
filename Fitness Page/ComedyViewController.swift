//
//  ComedyViewController.swift
//  entertainmentPage
//
//  Created by student on 7/25/18.
//  Copyright © 2018 Girls Who Code. All rights reserved.
//

import UIKit

class ComedyViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{
    var comedyArray = [UIImage(named: "zoolander2"), UIImage(named: "meanGirls"), UIImage(named: "legallyBlonde"), UIImage(named: "montyPython"), UIImage(named: "meetTheParents"), UIImage(named: "theBigSick")]

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
        return comedyArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ComedyCollectionViewCell", for: indexPath) as! ComedyCollectionViewCell
        
        cell.comedyImage.image = comedyArray[indexPath.row]
        
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
