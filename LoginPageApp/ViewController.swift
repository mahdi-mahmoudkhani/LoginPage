//
//  ViewController.swift
//  LoginPageApp
//
//  Created by Mahdi on 5/21/1403 AP.
//

import UIKit

class ViewController: UIViewController {
    
    let passIsVisible = UIButton()
    let passField = UITextField()
    let rememberMeButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        loadItems()
        self.dismissKeyboard()
    }
    
    private func loadItems() {
        
        loadAppLogo()
        loadSignInTitle()
        loadRegisterMessage()
        loadEmailTitle()
        loadEmailField()
        loadPasswordTitle()
        loadPsswordField()
        loadRememberMe()
        loadForgotPassword()
        loadLoginButton()
        loadLoginOptionsTitle()
        loadLoginOptionsLogos()
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
    
    private func loadEmailField() {

        let emailField = UITextField()
        
        emailField.translatesAutoresizingMaskIntoConstraints = false
        emailField.attributedPlaceholder = NSAttributedString(string: "Enter your email address", attributes: [
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.font : UIFont(name: "Poppins-Regular", size: 16.0) as Any ] )
        emailField.leftView = UIImageView(image: UIImage(named: "message"))
        emailField.leftViewMode = .always
        emailField.textContentType = .emailAddress
        emailField.keyboardType = .emailAddress
        emailField.returnKeyType = .done
        emailField.enablesReturnKeyAutomatically = true

        emailField.addTarget(self, action: #selector(UIViewController.dismissKeyboardTouchOutside), for: .editingDidEndOnExit)
        
        // MARK: FIXME
        
        self.view.addSubview(emailField)
        
        NSLayoutConstraint.activate( [
        
            emailField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 28),
            emailField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 306),
            emailField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -28),
            emailField.heightAnchor.constraint(equalToConstant: 24)

        ] )
        
        emailField.layoutIfNeeded()
        
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0, y: emailField.frame.height + 7 , width: emailField.frame.width , height: 2)
        bottomLine.backgroundColor = UIColor(red: 1, green: 67 / 255, blue: 42 / 255, alpha: 1).cgColor
        emailField.layer.addSublayer(bottomLine)
        
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
    
    private func loadPsswordField() {
        
        passField.translatesAutoresizingMaskIntoConstraints = false
        passField.attributedPlaceholder = NSAttributedString(string: "Enter your Password", attributes: [
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.font : UIFont(name: "Poppins-Regular", size: 13.0) as Any ] )
        passField.leftView = UIImageView(image: UIImage(named: "padlock"))
    
        passIsVisible.setImage(UIImage(named: "invisible"), for: .normal)
        passIsVisible.setImage(UIImage(named: "eye-fill"), for: .highlighted)
        passIsVisible.addTarget(self, action: #selector(changePassVisibility), for: [.touchDown, .touchUpInside])
        passField.rightView = passIsVisible

        passField.leftViewMode = .always
        passField.rightViewMode = .always
        
        passField.textContentType = .emailAddress
        passField.keyboardType = .emailAddress
        passField.returnKeyType = .done
        passField.enablesReturnKeyAutomatically = true
        passField.isSecureTextEntry = true
        
        passField.addTarget(self, action: #selector(UIViewController.dismissKeyboardTouchOutside), for: .editingDidEndOnExit)
        
        // MARK: FIXME
        
        self.view.addSubview(passField)
        
        NSLayoutConstraint.activate( [
        
            passField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 27),
            passField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 420),
            passField.widthAnchor.constraint(equalToConstant: 20)

        ] )
        
        passField.layoutIfNeeded()
        
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0, y: passField.frame.height + 10 , width: passField.frame.width , height: 2)
        bottomLine.backgroundColor = UIColor.black.cgColor
        passField.layer.addSublayer(bottomLine)
    }
    
    private func loadRememberMe() {
        
        rememberMeButton.translatesAutoresizingMaskIntoConstraints = false
        rememberMeButton.configuration = .plain()
        rememberMeButton.configuration?.image = UIImage(named: "Rectangle")
        rememberMeButton.configuration?.imagePadding = 6.0
        rememberMeButton.configuration?.attributedTitle = AttributedString("Remember me")
        rememberMeButton.configuration?.attributedTitle?.font = UIFont(name: "Poppins-Light", size: 12)
        rememberMeButton.configuration?.baseBackgroundColor = UIColor.systemBackground
        rememberMeButton.configuration?.baseForegroundColor = UIColor.black
        rememberMeButton.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 6.0, leading: 0.0, bottom: 0.0, trailing: 0.0)
        rememberMeButton.addTarget(self, action: #selector(changeRememberCheckBox), for: .touchUpInside)
        
        self.view.addSubview(rememberMeButton)
        
        NSLayoutConstraint.activate( [
        
            rememberMeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 469),
            rememberMeButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 29)
            
        ] )
        
    }
    
    private func loadForgotPassword() {
        
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Forgot Password ?", for: .normal)
        button.setTitleColor(UIColor(red: 77 / 256, green: 77 / 256, blue: 77 / 256, alpha: 1), for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.titleLabel?.font = UIFont(name: "Poppins-Light", size: 12)
        
        self.view.addSubview(button)
        
        NSLayoutConstraint.activate( [
        
            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 469),
            button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -28)
        
        ] )
        
    }
    
    private func loadLoginButton() {
        
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = .filled()
        button.configuration?.title = "Login"
        button.configuration?.baseBackgroundColor = UIColor(red: 1, green: 67 / 255, blue: 42 / 255, alpha: 1)
        button.configuration?.baseForegroundColor = UIColor.white
        button.configuration?.background.cornerRadius = 32.0
        button.configuration?.attributedTitle = AttributedString("Login")
        button.configuration?.attributedTitle?.font = UIFont(name: "Poppins-Medium", size: 17.0)
        
        button.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.25
        button.layer.shadowRadius = 26
        
        self.view.addSubview(button)
        
        NSLayoutConstraint.activate( [
        
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 547),
            button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 28.48),
            button.heightAnchor.constraint(equalToConstant: 53.0)
            
        ] )
    }
    
    private func loadLoginOptionsTitle() {
        
        let title = UILabel()
        
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "or continue with"
        title.font = UIFont(name: "Poppins-Medium", size: 16)
        title.textColor = UIColor(red: 181 / 255, green: 181 / 255, blue: 181 / 255, alpha: 1.0)
        
        self.view.addSubview(title)

        NSLayoutConstraint.activate( [
            
            title.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            title.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 642),
            
        ] )
    }
    
    private func loadLoginOptionsLogos() {
        
        let appleLogo = UIButton()
        let facebookLogo = UIButton()
        let googleLogo = UIButton()
        
        appleLogo.translatesAutoresizingMaskIntoConstraints = false
        facebookLogo.translatesAutoresizingMaskIntoConstraints = false
        googleLogo.translatesAutoresizingMaskIntoConstraints = false
        
        appleLogo.setImage(UIImage(named: "apple"), for: .normal)
        facebookLogo.setImage(UIImage(named: "Facebook"), for: .normal)
        googleLogo.setImage(UIImage(named: "google"), for: .normal)
        
        self.view.addSubview(appleLogo)
        self.view.addSubview(facebookLogo)
        self.view.addSubview(googleLogo)
        
        NSLayoutConstraint.activate( [
            
            appleLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            appleLogo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 691),
            
            facebookLogo.rightAnchor.constraint(equalTo: appleLogo.leftAnchor, constant: -17),
            facebookLogo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 691),
            
            googleLogo.leftAnchor.constraint(equalTo: appleLogo.rightAnchor, constant: 17),
            googleLogo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 691)
            
        ] )
    }
    
    @objc func changePassVisibility() {
        
        passField.isSecureTextEntry = !passField.isSecureTextEntry
    }
    
    @objc func changeRememberCheckBox() {
        
        rememberMeButton.isSelected.toggle()
        
        if !rememberMeButton.isSelected {
            
            rememberMeButton.configuration?.image = UIImage(named: "Rectangle")
        } else {
            
            rememberMeButton.configuration?.image = UIImage(named: "checkbox-marked")
        }
    }
}

extension UIViewController {
    
    func dismissKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer( target: self, action:    #selector(UIViewController.dismissKeyboardTouchOutside))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboardTouchOutside() {
        view.endEditing(true)
    }
}
