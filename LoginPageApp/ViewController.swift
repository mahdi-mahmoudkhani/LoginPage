//
//  ViewController.swift
//  LoginPageApp
//
//  Created by Mahdi on 5/21/1403 AP.
//

import UIKit

class ViewController: UIViewController {
    
    private let scrollView : UIScrollView = {
        
        let sv = UIScrollView()
        return sv
    }()
    
    private let contentView : UIView = {
        
        let v = UIView()
        return v
    }()
    
    let passIsVisible = UIButton()
    let passField = UITextField()
    let rememberMeButton = UIButton()
    let emailBottomLine = CALayer()
    let emailField = UITextField()
    let passBottomLine = CALayer()
    
    let eightCharMessage = UIButton()
    let specialCharMessage = UIButton()
    let upperCharMessage = UIButton()
    
    let checkMarkImage = UIImage(systemName: "checkmark.rectangle.fill")?
        .withConfiguration(UIImage.SymbolConfiguration(scale: .small))
    
    let xMarkImage = UIImage(systemName: "xmark.rectangle.fill")?
        .withConfiguration(UIImage.SymbolConfiguration(scale: .small))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        scrollViewSetup()
        loadItems()
        self.dismissKeyboard()
    }
    
    private func scrollViewSetup() {
        
        self.view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        self.scrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        //
        let hConst = contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        hConst.isActive = true
        hConst.priority = UILayoutPriority(50)
        //
        
        NSLayoutConstraint.activate( [
        
            scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            
            contentView.topAnchor.constraint(equalTo: self.scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor),
            
            contentView.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor)
            
        ] )
        
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
        loadPassValidationMessage()
    }
    
    private func loadAppLogo() {
        
        let logo = UILabel()
        
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.text = "Your Logo"
        logo.font = UIFont(name: "Poppins-SemiBold", size: 18)
        
        self.view.addSubview(logo)
        
        NSLayoutConstraint.activate( [
            
            logo.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 26),
            logo.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 18),
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
            
            SignInTitle.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 28),
            SignInTitle.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 102),
            SignInTitle.widthAnchor.constraint(equalToConstant: 128),
            SignInTitle.heightAnchor.constraint(equalToConstant: 45),
            
        ] )
    }
    
    private func loadRegisterMessage() {
        
        let registerMessageL1 = UILabel()
        let registerMessageL2 = UILabel()
        let registerButton = UIButton()
        
        registerMessageL1.translatesAutoresizingMaskIntoConstraints = false
        registerMessageL2.translatesAutoresizingMaskIntoConstraints = false
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        
        registerMessageL1.text = "If you don’t have an account register"
        registerMessageL1.font = UIFont(name: "Poppins-Regular", size: 16)
        
        registerMessageL2.text = "You can"
        registerMessageL2.font = UIFont(name: "Poppins-Regular", size: 16)
        
        registerButton.setTitle("Register here !", for: .normal)
        registerButton.setTitleColor(UIColor(red: 1, green: 67 / 255, blue: 42 / 255, alpha: 1), for: .normal)
        registerButton.titleLabel?.font = UIFont(name: "Poppins-SemiBold", size: 16)
        registerButton.setTitleColor(UIColor.gray, for: .highlighted)
        
        self.view.addSubview(registerMessageL1)
        self.view.addSubview(registerMessageL2)
        self.view.addSubview(registerButton)
        
        NSLayoutConstraint.activate( [
            
            registerMessageL1.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 28.48),
            registerMessageL1.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 169),
            registerMessageL1.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -31),
            
            registerMessageL2.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 28.48),
            registerMessageL2.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 199),
            registerMessageL2.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -31),
            
            registerButton.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 107),
            registerButton.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 193)
            
        ] )
    }
    
    private func loadEmailTitle() {
        
        let title = UILabel()
        
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Email"
        title.font = UIFont(name: "Poppins-Medium", size: 13)
        
        self.view.addSubview(title)
        
        NSLayoutConstraint.activate( [
            
            title.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 28.48),
            title.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 275),
            title.widthAnchor.constraint(equalToConstant: 36),
            title.heightAnchor.constraint(equalToConstant: 20),
            
        ] )
    }
    
    private func loadEmailField() {

        let leftViewPadding = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: emailField.frame.height))
        let messageImageView = UIImageView(image: UIImage(named: "message"))
        
        messageImageView.contentMode = .left
        messageImageView.frame = CGRect(x: 0, y: 0, width: 20, height: emailField.frame.height)
        leftViewPadding.addSubview(messageImageView)
        
        emailField.translatesAutoresizingMaskIntoConstraints = false
        emailField.attributedPlaceholder = NSAttributedString(string: "Enter your email address", attributes: [
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.font : UIFont(name: "Poppins-Regular", size: 16.0) as Any ] )
        
        emailField.leftView = leftViewPadding
        emailField.leftViewMode = .always
        emailField.textContentType = .emailAddress
        emailField.keyboardType = .emailAddress
        emailField.returnKeyType = .done
        emailField.enablesReturnKeyAutomatically = true

        emailField.addTarget(self, action: #selector(UIViewController.dismissKeyboardTouchOutside), for: .editingDidEndOnExit)
        emailField.addTarget(self, action: #selector(changeEmailButtomLineColor), for: .allEvents)
        
        self.view.addSubview(emailField)
        
        NSLayoutConstraint.activate( [
        
            emailField.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 28),
            emailField.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            emailField.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 306),
            emailField.rightAnchor.constraint(equalTo: self.contentView.rightAnchor, constant: -28),
            emailField.heightAnchor.constraint(equalToConstant: 24)

        ] )
        
        emailField.layoutIfNeeded()
        
        emailBottomLine.frame = CGRect(x: 0, y: emailField.frame.height + 7 , width: emailField.frame.width , height: 2)
        emailBottomLine.backgroundColor = UIColor.black.cgColor
        emailField.layer.addSublayer(emailBottomLine)
        
    }
    
    private func loadPasswordTitle() {
        
        let title = UILabel()
        
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Password"
        title.font = UIFont(name: "Poppins-Medium", size: 13)
        
        self.view.addSubview(title)
        
        NSLayoutConstraint.activate( [
            
            title.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 28.48),
            title.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 388),
            title.widthAnchor.constraint(equalToConstant: 65),
            title.heightAnchor.constraint(equalToConstant: 20),
            
        ] )
    }
    
    private func loadPsswordField() {
        
        let leftViewFrame = UIView(frame: CGRect(x: 0, y: 0, width: 27, height: passField.frame.height))
        let leftViewImage = UIImageView(image: UIImage(named: "padlock"))
        
        leftViewImage.contentMode = .left
        leftViewImage.frame = CGRect(x: 0, y: 0, width: 20, height: passField.frame.height)
        leftViewFrame.addSubview(leftViewImage)
        
        passField.translatesAutoresizingMaskIntoConstraints = false
        passField.attributedPlaceholder = NSAttributedString(string: "Enter your Password", attributes: [
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.font : UIFont(name: "Poppins-Regular", size: 13.0) as Any ] )
        passField.leftView = leftViewFrame
    
        passIsVisible.setImage(UIImage(named: "invisible"), for: .normal)
        passIsVisible.setImage(UIImage(named: "eye-fill"), for: .highlighted)
        passIsVisible.addTarget(self, action: #selector(changePassVisibility), for: [.touchDown, .touchUpInside])
        passField.rightView = passIsVisible

        passField.leftViewMode = .always
        passField.rightViewMode = .always
        
        passField.returnKeyType = .done
        passField.enablesReturnKeyAutomatically = true
        passField.isSecureTextEntry = true
        
        passField.addTarget(self, action: #selector(UIViewController.dismissKeyboardTouchOutside), for: .editingDidEndOnExit)
        passField.addTarget(self, action: #selector(changePassButtomLineColor), for: .allEvents)
        passField.addTarget(self, action: #selector(checkPass), for: .allEditingEvents)
        
        self.view.addSubview(passField)
        
        NSLayoutConstraint.activate( [
        
            passField.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 27),
            passField.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            passField.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 420),
//            passField.rightAnchor.constraint(equalTo: self.contentView.rightAnchor, constant: -28),
            passField.heightAnchor.constraint(equalToConstant: 20)

        ] )
        
        passField.layoutIfNeeded()
        
        passBottomLine.frame = CGRect(x: 0, y: passField.frame.height + 10 , width: passField.frame.width , height: 2)
        passBottomLine.backgroundColor = UIColor.black.cgColor
        passField.layer.addSublayer(passBottomLine)
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
        
            rememberMeButton.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 463),
            rememberMeButton.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 29)
            
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
        
            button.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 463),
            button.rightAnchor.constraint(equalTo: self.contentView.rightAnchor, constant: -28)
        
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
        
            button.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            button.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 567),
            button.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 28.48),
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
            
            title.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            title.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 642),
            
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
            
            appleLogo.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            appleLogo.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 691),
            
            facebookLogo.rightAnchor.constraint(equalTo: appleLogo.leftAnchor, constant: -17),
            facebookLogo.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 691),
            
            googleLogo.leftAnchor.constraint(equalTo: appleLogo.rightAnchor, constant: 17),
            googleLogo.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 691)
            
        ] )
    }
    
    private func loadPassValidationMessage() {
        
        let font = UIFont(name: "Poppins-SemiBold", size: 10)
        
        eightCharMessage.translatesAutoresizingMaskIntoConstraints = false
        
        eightCharMessage.configuration = .plain()
        eightCharMessage.configuration?.image = xMarkImage
        eightCharMessage.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)
        eightCharMessage.configuration?.imagePadding = 5.0
        eightCharMessage.configuration?.attributedTitle = AttributedString("at least 8 characters")
        eightCharMessage.configuration?.attributedTitle?.font = font
        eightCharMessage.tintColor = .systemRed
        eightCharMessage.isUserInteractionEnabled = false
        
        specialCharMessage.translatesAutoresizingMaskIntoConstraints = false
        
        specialCharMessage.configuration = .plain()
        specialCharMessage.configuration?.image = xMarkImage
        specialCharMessage.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)
        specialCharMessage.configuration?.imagePadding = 5.0
        specialCharMessage.configuration?.attributedTitle = AttributedString("at least one special character")
        specialCharMessage.configuration?.attributedTitle?.font = font
        specialCharMessage.tintColor = .systemRed
        specialCharMessage.isUserInteractionEnabled = false
        
        upperCharMessage.translatesAutoresizingMaskIntoConstraints = false
        
        upperCharMessage.configuration = .plain()
        upperCharMessage.configuration?.image = xMarkImage
        upperCharMessage.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)
        upperCharMessage.configuration?.imagePadding = 5.0
        upperCharMessage.configuration?.attributedTitle = AttributedString("at least one uppercase character")
        upperCharMessage.configuration?.attributedTitle?.font = font
        upperCharMessage.tintColor = .systemRed
        upperCharMessage.isUserInteractionEnabled = false
        
        eightCharMessage.isHidden = true
        specialCharMessage.isHidden = true
        upperCharMessage.isHidden = true
        
        self.view.addSubview(eightCharMessage)
        self.view.addSubview(specialCharMessage)
        self.view.addSubview(upperCharMessage)
        
        NSLayoutConstraint.activate( [
        
            eightCharMessage.topAnchor.constraint(equalTo:self.contentView.topAnchor, constant: 490),
            eightCharMessage.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 27.3),
            
            specialCharMessage.topAnchor.constraint(equalTo: eightCharMessage.bottomAnchor, constant: -5),
            specialCharMessage.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 27.3),
            
            upperCharMessage.topAnchor.constraint(equalTo: specialCharMessage.bottomAnchor, constant: -5),
            upperCharMessage.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 27.3)
            
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
    
    @objc func changeEmailButtomLineColor() {
        
        if self.emailField.isEditing {
            
            emailBottomLine.backgroundColor = UIColor(red: 1, green: 67 / 255, blue: 42 / 255, alpha: 1).cgColor
        } else {
            
            emailBottomLine.backgroundColor = UIColor.black.cgColor
        }
    }
    
    @objc func changePassButtomLineColor() {
        
        if self.passField.isEditing {
            
            passBottomLine.backgroundColor = UIColor(red: 1, green: 67 / 255, blue: 42 / 255, alpha: 1).cgColor
        } else {
            
            passBottomLine.backgroundColor = UIColor.black.cgColor
        }
    }
    
    @objc func checkPass() {
        
        let pass = passField.text!
        
        if pass != "" {
            
            eightCharMessage.isHidden = false
            specialCharMessage.isHidden = false
            upperCharMessage.isHidden = false
            
        } else {
            
            eightCharMessage.isHidden = true
            specialCharMessage.isHidden = true
            upperCharMessage.isHidden = true
        }
        
        if pass.count >= 8 {
            
            eightCharMessage.tintColor = .systemGreen
            eightCharMessage.configuration?.image = checkMarkImage
        } else {
            
            eightCharMessage.tintColor = .systemRed
            eightCharMessage.configuration?.image = xMarkImage
        }
            
        
        let hasSpecialCharacters = pass.range(of: ".*[^A-Za-z0-9].*", options: .regularExpression) != nil
        if hasSpecialCharacters { 
            
            specialCharMessage.tintColor = .systemGreen
            specialCharMessage.configuration?.image = checkMarkImage
        } else {
            
            specialCharMessage.tintColor = .systemRed
            specialCharMessage.configuration?.image = xMarkImage
            
        }
        
        let hasUpperCharacters = pass.range(of: ".*[A-Z].*", options: .regularExpression) != nil
        if hasUpperCharacters {
            
            upperCharMessage.tintColor = .systemGreen
            upperCharMessage.configuration?.image = checkMarkImage
        } else {
            
            upperCharMessage.tintColor = .systemRed
            upperCharMessage.configuration?.image = xMarkImage
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
