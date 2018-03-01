//
//  CollectionController.swift
//  CollectionPro
//
//  Created by SOUMEN GHOSH on 24/1/18.
//  Copyright © 2018 Sg106. All rights reserved.
//

import UIKit

class CollectionController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellID = "cellID"
    var users = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Contact List"
        collectionView?.backgroundColor = .lightGray
        collectionView?.register(ImageCell.self, forCellWithReuseIdentifier: cellID)
        
        setupBar()
        setupUsers()
    }
    
    func setupBar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(line))
    }
    
    @objc func line() {
//        print(123)
    }
    
    func setupUsers() {
        let user1 = User(name: "Nasim Rony", msg: "Pro iOS developer.", image: #imageLiteral(resourceName: "pic_nasim"))
        let user2 = User(name: "Ahanaf Alif", msg: "I am here. How can i help?", image: #imageLiteral(resourceName: "pic_alu"))
        let user3 = User(name: "Muhaimin Habib", msg: "Bike Racer!", image: #imageLiteral(resourceName: "pic_habib"))
        let user4 = User(name: "Kazi Shourav", msg: "Australia, I am coming", image: #imageLiteral(resourceName: "pic_sourav"))
        let user5 = User(name: "Hasibul Jisan", msg: "Learning iOS. It's cool.", image: #imageLiteral(resourceName: "pic_jisan"))
        let user6 = User(name: "Sovon Mazumder", msg: "Ami ak NOOB!!", image: #imageLiteral(resourceName: "pic_shovon"))
        let user7 = User(name: "Rifat Sahariar", msg: "Professional Web Developer", image: #imageLiteral(resourceName: "pic_saru"))
        let user8 = User(name: "Nayeem Mehedi", msg: "Now at BJIT", image: #imageLiteral(resourceName: "pic_nayeem"))
        
        users = [user1, user2, user3, user4, user5, user6, user7, user8]
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! ImageCell
        cell.backgroundColor = .white
        cell.layer.cornerRadius = 30
        cell.layer.masksToBounds = true
        
        cell.user = users[indexPath.item]
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return users.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 165, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
    }
    
}
