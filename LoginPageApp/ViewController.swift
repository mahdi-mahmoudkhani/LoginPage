//
//  ViewController.swift
//  LoginPageApp
//
//  Created by Mahdi on 5/21/1403 AP.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadItems()
    }
    
    private func loadItems() {
        
        loadAppLogo()
        loadSignInTitle()
        loadRegisterMessage()
        loadEmailTitle()
        loadPasswordTitle()
    }
    
    private func loadAppLogo() {
        
        let logo = UILabel()
        
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.text = "Your Logo"
        logo.font = UIFont(name: "Poppins-SemiBold", size: 18)
        
        self.view.addSubview(logo)
        
        NSLayoutConstraint.activate( [
            
            logo.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 26),
            logo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 18),
            logo.widthAnchor.constraint(equalToConstant: 90),
            logo.heightAnchor.constraint(equalToConstant: 27),
            
        ] )
        
    }
    
    private func loadSignInTitle() {
        
        let SignInTitle = UILabel()
        
        SignInTitle.translatesAutoresizingMaskIntoConstraints = false
        SignInTitle.text = "Sign in"
        SignInTitle.font = UIFont(name: "Poppins-Medium", size: 30)
        
        self.view.addSubview(SignInTitle)

        NSLayoutConstraint.activate( [
            
            SignInTitle.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 28),
            SignInTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 102),
            SignInTitle.widthAnchor.constraint(equalToConstant: 128),
            SignInTitle.heightAnchor.constraint(equalToConstant: 45),
            
        ] )
    }
    
    private func loadRegisterMessage() {
        
        let registerMessageL1 = UILabel()
        let registerMessageL2 = UILabel()
        let stringText = "You can   Register here !"
        let attributedString = NSMutableAttributedString(string: stringText)
        let registerWordRange = (stringText as NSString).range(of: "Register here !")
        
        registerMessageL1.translatesAutoresizingMaskIntoConstraints = false
        registerMessageL2.translatesAutoresizingMaskIntoConstraints = false
        
        registerMessageL1.text = "If you don’t have an account register"
        registerMessageL1.font = UIFont(name: "Poppins-Regular", size: 16)
        
        attributedString.addAttribute(.foregroundColor, value: UIColor(red: 255 / 255, green: 67 / 255, blue: 42 / 255, alpha: 1.0), range: registerWordRange)
        attributedString.addAttribute(.font, value: UIFont(name: "Poppins-SemiBold", size: 16)!, range: registerWordRange)
        registerMessageL2.attributedText = attributedString
        
        self.view.addSubview(registerMessageL1)
        self.view.addSubview(registerMessageL2)
        
        NSLayoutConstraint.activate( [
            
            registerMessageL1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 28.48),
            registerMessageL1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 169),
            registerMessageL1.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -31),
            
            registerMessageL2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 28.48),
            registerMessageL2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 199),
            registerMessageL2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -31),
            
        ] )
    }
    
    private func loadEmailTitle() {
        
        let title = UILabel()
        
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Email"
        title.font = UIFont(name: "Poppins-Medium", size: 13)
        
        self.view.addSubview(title)
        
        NSLayoutConstraint.activate( [
            
            title.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 28.48),
            title.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 275),
            title.widthAnchor.constraint(equalToConstant: 36),
            title.heightAnchor.constraint(equalToConstant: 20),
            
        ] )
    }
    
    private func loadPasswordTitle() {
        
        let title = UILabel()
        
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Password"
        title.font = UIFont(name: "Poppins-Medium", size: 13)
        
        self.view.addSubview(title)
        
        NSLayoutConstraint.activate( [
            
            title.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 28.48),
            title.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 388),
            title.widthAnchor.constraint(equalToConstant: 65),
            title.heightAnchor.constraint(equalToConstant: 20),
            
        ] )
    }
}

