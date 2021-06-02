//
//  LoginViewController.swift
//  Scenes
//
//  Created by Guilherme Martins Dalosto de Oliveira on 02/06/21.
//

import UIKit
import RxSwift

class LoginViewController: UIViewController, ViewProtocol {
    typealias Presenter = LoginPresenter
    
    var presenter: Presenter!
    weak var disposeBag: DisposeBag!
        
    func bindUI(){}
    
}
