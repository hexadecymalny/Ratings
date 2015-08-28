//
//  RateImage.swift
//  Ratings
//
//  Created by hexadecymalny on 26/07/15.
//  Copyright © 2015 hexadecymalny. All rights reserved.
//

import UIKit

enum RateImage: String {
    case StarSmall = "StarSmall"
    
    func setRateImage(rating rating: Int) -> UIImage? {
        guard rating >= 1 else { return nil }
        
        return UIImage(named: "\(rating)" + self.rawValue)
    }
}
