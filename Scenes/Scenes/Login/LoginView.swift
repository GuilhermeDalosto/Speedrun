//
//  LoginView.swift
//  Scenes
//
//  Created by Guilherme Martins Dalosto de Oliveira on 02/06/21.
//

import UIKit

class LoginView: UIView {
        
    lazy var titleLabel: UILabel = {
        var view = UILabel(frame: .zero)
        view.textColor = .black
        return view
    }()
    
    var usernameField: UITextField = {
        var view = UITextField(frame: .zero)
        view.borderStyle = .roundedRect
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        makeDraw()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension LoginView: Drawable {
    func setupHierarchy() {
        addSubview(titleLabel)
        addSubview(usernameField)
    }
    
    func setupStyle() {}
    
    func setupConstraints() {}
    
    func setupAdditionalConfig() {}
}
