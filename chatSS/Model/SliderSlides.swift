//
//  SliderSlides.swift
//  chatSS
//
//  Created by Юханов Сергей Сергеевич on 12.08.2021.
//

import Foundation

class SliderSlides {
    func getSlides() -> [Slides] {
        var slides: [Slides] = []
        
        let slide1 = Slides(id: 1, text: "text1", img: #imageLiteral(resourceName: "slide1"))
        let slide2 = Slides(id: 2, text: "text2", img: #imageLiteral(resourceName: "slide2"))
        let slide3 = Slides(id: 3, text: "text3", img: #imageLiteral(resourceName: "slide3"))
        
        slides.append(slide1)
        slides.append(slide2)
        slides.append(slide3)
        
        return slides
        
        
    }
}
