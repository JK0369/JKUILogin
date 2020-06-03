//
//  LoginViewController.swift
//  JKUILogin
//
//  Created by 김종권 on 2020/04/26.
//  Copyright © 2020 mustang. All rights reserved.
//

import UIKit
open class LoginViewController: UIViewController {
    public var info: UILabel!
    public var id: UITextField!
    public var pw: UITextField!
    
    public var loginBtn: UIButton! 
    
    public var shareInfo: UILabel!
    
    public var containView: UIView!
    public var shareBtn1: UIButton!
    public var shareBtn2: UIButton!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.initValue()
        
        let infoInterval: CGFloat = self.view.frame.height / self.view.frame.width * 35 // iPhone8: 62.2633..
        var constraints = [
            info.topAnchor.constraint(equalTo: self.view.topAnchor, constant: infoInterval*1.3),
            info.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: infoInterval),
            info.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -infoInterval)
        ]
        NSLayoutConstraint.activate(constraints)
        
        constraints = [
            id.topAnchor.constraint(equalTo: info.bottomAnchor, constant: infoInterval*0.5),
            id.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: infoInterval),
            id.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -infoInterval)
        ]
        NSLayoutConstraint.activate(constraints)
        
        constraints = [
            pw.topAnchor.constraint(equalTo: id.bottomAnchor, constant: infoInterval/7),
            pw.leftAnchor.constraint(equalTo: id.leftAnchor),
            pw.rightAnchor.constraint(equalTo: id.rightAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
        
        constraints = [
            loginBtn.topAnchor.constraint(equalTo: pw.bottomAnchor, constant: infoInterval/3),
            loginBtn.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: infoInterval),
            loginBtn.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -infoInterval)
        ]
        NSLayoutConstraint.activate(constraints)
        
        constraints = [
            shareInfo.topAnchor.constraint(equalTo: loginBtn.topAnchor, constant: infoInterval/2),
            shareInfo.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: infoInterval),
            shareInfo.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -infoInterval)
        ]
        NSLayoutConstraint.activate(constraints)
        
        // containView
        constraints = [
            containView.topAnchor.constraint(equalTo: loginBtn.bottomAnchor, constant: infoInterval/2),
            containView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: infoInterval),
            containView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -infoInterval),
            containView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -infoInterval*3)
        ]
        NSLayoutConstraint.activate(constraints)
        
        // shareBtn1, shareBtn2
        constraints = [
            shareBtn1.leftAnchor.constraint(equalTo: containView.leftAnchor),
            shareBtn1.topAnchor.constraint(equalTo: containView.topAnchor),
            shareBtn1.bottomAnchor.constraint(equalTo: containView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
        
        constraints = [
            shareBtn2.widthAnchor.constraint(equalTo: shareBtn1.widthAnchor), // 중요 포인트
            shareBtn2.leftAnchor.constraint(equalTo: shareBtn1.rightAnchor, constant: infoInterval*0.1),
            shareBtn2.topAnchor.constraint(equalTo: shareBtn1.topAnchor),
            shareBtn2.rightAnchor.constraint(equalTo: containView.rightAnchor),
            shareBtn2.bottomAnchor.constraint(equalTo: shareBtn1.bottomAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
        
    }
    
    private func initValue() {
        
        self.view.backgroundColor = UIColor.init(patternImage: UIImage(named: "apple.jpg")!)
        
        info = UILabel()
        id = UITextField()
        pw = UITextField()
        
        loginBtn = UIButton()
        
        shareInfo = UILabel()
        containView = UIView()
        shareBtn1 = UIButton()
        shareBtn2 = UIButton()
        
        info.text = "Footprints"
        info.font = .italicSystemFont(ofSize: 30)
        info.textColor = .white
        info.textAlignment = .center
        
        
        id.textColor = .white
        id.font = .systemFont(ofSize: 15)
        id.layer.borderWidth = 1
        id.layer.borderColor = UIColor.gray.cgColor
        
        id.attributedPlaceholder = NSAttributedString(string: "User Id",attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        id.textAlignment = .center
        
        
        pw.textColor = .white
        pw.font = .systemFont(ofSize: 15)
        pw.isSecureTextEntry = true
        pw.layer.borderWidth = 1
        pw.layer.borderColor = UIColor.gray.cgColor
        pw.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        pw.textAlignment = .center
        
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.setTitleColor(.white, for: .normal)
        loginBtn.layer.borderWidth = 1
        loginBtn.layer.cornerRadius = 15
        loginBtn.backgroundColor = UIColor.blue
        
        shareInfo.text = "or connect with"
        shareInfo.textAlignment = .center
        shareInfo.textColor = .gray
                
        shareBtn1.setTitle("icon1", for: .normal)
        shareBtn1.backgroundColor = .blue
        shareBtn1.layer.borderWidth = 1
        shareBtn1.layer.cornerRadius = 15
        
        shareBtn2.setTitle("icon2", for: .normal)
        shareBtn2.backgroundColor = .blue
        shareBtn2.layer.borderWidth = 1
        shareBtn2.layer.cornerRadius = 15
        
        containView.addSubview(shareBtn1)
        containView.addSubview(shareBtn2)
        
        info.translatesAutoresizingMaskIntoConstraints = false
        id.translatesAutoresizingMaskIntoConstraints = false
        pw.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        shareInfo.translatesAutoresizingMaskIntoConstraints = false
        containView.translatesAutoresizingMaskIntoConstraints = false
        shareBtn1.translatesAutoresizingMaskIntoConstraints = false
        shareBtn2.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(info)
        self.view.addSubview(id)
        self.view.addSubview(pw)
        self.view.addSubview(loginBtn)
        self.view.addSubview(shareInfo)
        self.view.addSubview(containView)
    }
}
