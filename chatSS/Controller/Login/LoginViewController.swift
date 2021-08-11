//
//  LoginViewController.swift
//  chatSS
//
//  Created by Юханов Сергей Сергеевич on 11.08.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    var collectionView: UICollectionView!
    var slides: [Slides] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configCollectionView()
        
        let slide1 = Slides(id: 1, text: "text1", img: #imageLiteral(resourceName: "slide1"))
        let slide2 = Slides(id: 2, text: "text2", img: #imageLiteral(resourceName: "slide2"))
        let slide3 = Slides(id: 3, text: "text3", img: #imageLiteral(resourceName: "slide3"))

        slides.append(slide1)
        slides.append(slide2)
        slides.append(slide3)
    }
    
    func configCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        
        
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.backgroundColor = .systemGray
        view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
        
        collectionView.register(UINib(nibName: SlideCollectionViewCell.reuseId, bundle: nil), forCellWithReuseIdentifier: SlideCollectionViewCell.reuseId)
        
    }


}

extension LoginViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SlideCollectionViewCell.reuseId, for: indexPath) as! SlideCollectionViewCell
        let slide = slides[indexPath.row]
        cell.configure(slide: slide)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return self.view.frame.size
    }
}
