//
//  SlideCollectionViewCell.swift
//  chatSS
//
//  Created by Юханов Сергей Сергеевич on 11.08.2021.
//

import UIKit

class SlideCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var descriptionText: UILabel!
    @IBOutlet weak var slideImg: UIImageView!
    @IBOutlet weak var regBtn: UIButton!
    @IBOutlet weak var enterBtn: UIButton!
    static let reuseId = "SlideCollectionViewCell"
    var delegate: LoginViewControllerDelegate!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(slide: Slides) {
        descriptionText.text = slide.text
        slideImg.image = slide.img
        if slide.id == 3 {
            regBtn.isHidden = false
            enterBtn.isHidden = false
        }
    }
    
    @IBAction func registerBtnTapped(_ sender: Any) {
        delegate.openRegVC()
    }
    @IBAction func authBtnTapped(_ sender: Any) {
        delegate.openAppVC()
    }
    
}
