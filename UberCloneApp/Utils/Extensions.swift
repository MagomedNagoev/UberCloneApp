//
//  Extensions.swift
//  UberCloneApp
//
//  Created by Нагоев Магомед on 28.07.2021.
//

import UIKit

extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor.init(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
    }
    
    static let backgroundColor = UIColor.rgb(red: 25, green: 25, blue: 25)
    static let mainBlueTinit = UIColor.rgb(red: 17, green: 154, blue: 237)
    
}

extension UIView {
    
    func inputContainerView(image: UIImage,
                            textField: UITextField? = nil,
                            segmentedControl: UISegmentedControl? = nil) -> UIView {
        let view = UIView()
        
        let imageView = UIImageView()
        imageView.image = image
        imageView.alpha = 0.87
        view.addSubview(imageView)

        
        if let textField = textField {
            
            imageView.centerY(inView: view)
            imageView.anchor(left: view.leftAnchor, paddingLeft: 8, width: 24, height: 24)
            
            view.addSubview(textField)
            textField.anchor(left: imageView.rightAnchor,
                                  bottom: view.bottomAnchor,
                                  right: view.rightAnchor,
                                  paddingLeft: 8,
                                  paddingBottom: 8)
            textField.centerY(inView: view)
        }
        
        if let segmentedControl = segmentedControl {
            

            view.addSubview(segmentedControl)
            segmentedControl.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 8, paddingBottom: 8, paddingRight: 8)
            
            imageView.anchor(left: view.leftAnchor, bottom: segmentedControl.topAnchor,
                             paddingLeft: 8, paddingBottom: 4,
                             width: 24, height:24)
//            segmentedControl.centerY(inView: view, constant: 8)
            
        }
        
        let separatorView = UIView()
        separatorView.backgroundColor = .lightGray
        view.addSubview(separatorView)
        
        separatorView.anchor(left: view.leftAnchor,
                             bottom: view.bottomAnchor,
                             right: view.rightAnchor,
                             paddingLeft: 8, height: 0.75)
        
        return view
    }
    
    func anchor(top: NSLayoutYAxisAnchor? = nil,
                left: NSLayoutXAxisAnchor? = nil,
                bottom: NSLayoutYAxisAnchor? = nil,
                right: NSLayoutXAxisAnchor? = nil,
                paddingTop: CGFloat = 0,
                paddingLeft: CGFloat = 0,
                paddingBottom: CGFloat = 0,
                paddingRight: CGFloat = 0,
                width: CGFloat? = nil,
                height: CGFloat? = nil) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        
    }
    
    func centerX(inView view: UIView) {
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func centerY(inView view: UIView, constant: CGFloat = 0) {
        centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: constant).isActive = true
    }
    
}

extension UITextField {
    
    func textField(withPlaceHolder placeHolder: String, isSecureTextEntry: Bool) -> UITextField {
        let tf = UITextField()
        
        tf.borderStyle = .none
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.textColor = .white
        tf.keyboardAppearance = .dark
        tf.attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        tf.isSecureTextEntry = isSecureTextEntry
        
        return tf
    }
    
}
