//
//  UiView + extention.swift
//  WorkoutApp
//
//  Created by Vladislav Ryabtsev on 18.02.2024.
//

import UIKit

extension UIView {
    
    func addBottomBorder(with color: UIColor, height: CGFloat) {
        let seperetor = UIView()
        seperetor.backgroundColor = color
        seperetor.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        seperetor.frame = CGRect(x: 0,
                                 y: frame.height - height,
                                 width: frame.width,
                                 height: height)
        addSubview(seperetor)
    }
}
