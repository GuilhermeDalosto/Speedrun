//
//  LoginViewController.swift
//  Scenes
//
//  Created by Guilherme Martins Dalosto de Oliveira on 02/06/21.
//

import UIKit
//import RxSwift

class LoginViewController: UIViewController, ViewProtocol {
    typealias Presenter = LoginPresenter
    
    var defaultView: UIView!
    var presenter: Presenter!
//    weak var disposeBag: DisposeBag!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupView()
    }
    
    func bindUI(){}
            
    func setupView() {
        title = "Speedrun"
    }
    
}
