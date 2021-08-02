//
//  AuthButton.swift
//  UberCloneApp
//
//  Created by Нагоев Магомед on 02.08.2021.
//

import UIKit

class AuthButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setTitleColor(UIColor(white: 1, alpha: 0.5), for: .normal)
        backgroundColor = .mainBlueTinit
        layer.cornerRadius = 5
        anchor(height:50)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
