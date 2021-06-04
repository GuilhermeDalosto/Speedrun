//
//  LoginView.swift
//  Scenes
//
//  Created by Guilherme Martins Dalosto de Oliveira on 02/06/21.
//

import UIKit

class LoginView: UIView {
    
    lazy var usernameLabel: UILabel = {
        var view = UILabel(frame: .zero)
        view.text = "Username"
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
            
    var usernameField: UITextField = {
        var view = UITextField(frame: .zero)
        view.borderStyle = .roundedRect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var passwordLabel: UILabel = {
        var view = UILabel(frame: .zero)
        view.text = "Password"
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var passwordField: UITextField = {
        var view = UITextField(frame: .zero)
        view.borderStyle = .roundedRect
        view.translatesAutoresizingMaskIntoConstraints = false
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
        addSubview(usernameLabel)
        addSubview(usernameField)
        addSubview(passwordLabel)
        addSubview(passwordField)
    }
    
    func setupStyle() {
        backgroundColor = .white        
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            usernameLabel.topAnchor.constraint(equalTo: centerYAnchor, constant: -70),
            usernameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            usernameField.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: Metrics.FieldSpacing),
            usernameField.centerXAnchor.constraint(equalTo: centerXAnchor),
            usernameField.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            
            passwordLabel.topAnchor.constraint(equalTo: usernameField.bottomAnchor, constant: Metrics.LabelSpacing),
            passwordLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                        
            passwordField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: Metrics.FieldSpacing),
            passwordField.centerXAnchor.constraint(equalTo: centerXAnchor),
            passwordField.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5)
        ])
    }
    
    func setupAdditionalConfig() {}
}
