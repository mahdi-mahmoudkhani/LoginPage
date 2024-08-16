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
    
    let logo = UILabel()
    let SignInTitle = UILabel()
    let registerMessageL1 = UILabel()
    let registerMessageL2 = UILabel()
    let registerButton = UIButton()
    let emailTitle = UILabel()
    let passTitle = UILabel()
    let passIsVisible = UIButton()
    let passField = UITextField()
    let rememberMeButton = UIButton()
    let emailBottomLine = CALayer()
    let emailField = UITextField()
    let passBottomLine = CALayer()
    let loginButton = UIButton()
    let optionsTitle = UILabel()
    let appleLogo = UIButton()
    let facebookLogo = UIButton()
    let googleLogo = UIButton()
    
    
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
        self.setupKeyboardHiding()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        emailField.layoutIfNeeded()
        emailBottomLine.frame = CGRect(x: 0, y: emailField.bounds.height + 10, width: emailField.bounds.width, height: 2)
        
        passField.layoutIfNeeded()
        passBottomLine.frame = CGRect(x: 0, y: passField.bounds.height + 10, width: passField.bounds.width, height: 2)
    }
    
    private func scrollViewSetup() {
        
        self.view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        self.scrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate( [
        
            scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            
            contentView.topAnchor.constraint(equalTo: self.scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor),
            
            contentView.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor),
            contentView.heightAnchor.constraint(equalTo: self.contentView.heightAnchor)
            
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
        
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.text = "Your Logo"
        logo.font = UIFont(name: "Poppins-SemiBold", size: 18)
        
        self.contentView.addSubview(logo)
        
        NSLayoutConstraint.activate( [
            
            logo.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 26),
            logo.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 18),
            logo.widthAnchor.constraint(equalToConstant: 90),
            logo.heightAnchor.constraint(equalToConstant: 27),
            
        ] )
        
    }
    
    private func loadSignInTitle() {
        
        SignInTitle.translatesAutoresizingMaskIntoConstraints = false
        SignInTitle.text = "Sign in"
        SignInTitle.font = UIFont(name: "Poppins-Medium", size: 30)
        
        self.contentView.addSubview(SignInTitle)

        NSLayoutConstraint.activate( [
            
            SignInTitle.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 28),
            SignInTitle.topAnchor.constraint(equalTo: self.logo.bottomAnchor, constant: 57),
            SignInTitle.widthAnchor.constraint(equalToConstant: 128),
            SignInTitle.heightAnchor.constraint(equalToConstant: 45),
            
        ] )
    }
    
    private func loadRegisterMessage() {
        
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
        
        self.contentView.addSubview(registerMessageL1)
        self.contentView.addSubview(registerMessageL2)
        self.contentView.addSubview(registerButton)
        
        NSLayoutConstraint.activate( [
            
            registerMessageL1.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 28.48),
            registerMessageL1.topAnchor.constraint(equalTo: self.SignInTitle.bottomAnchor, constant: 22),
            registerMessageL1.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -31),
            
            registerMessageL2.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 28.48),
            registerMessageL2.topAnchor.constraint(equalTo: self.registerMessageL1.bottomAnchor, constant: 6),
            registerMessageL2.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -31),
            
            registerButton.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 107),
            registerButton.topAnchor.constraint(equalTo: self.registerMessageL1.bottomAnchor)
            
        ] )
    }
    
    private func loadEmailTitle() {
        
        emailTitle.translatesAutoresizingMaskIntoConstraints = false
        emailTitle.text = "Email"
        emailTitle.font = UIFont(name: "Poppins-Medium", size: 13)
        
        self.contentView.addSubview(emailTitle)
        
        NSLayoutConstraint.activate( [
            
            emailTitle.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 28.48),
            emailTitle.topAnchor.constraint(equalTo: self.registerMessageL2.bottomAnchor, constant: 52),
            emailTitle.widthAnchor.constraint(equalToConstant: 36),
            emailTitle.heightAnchor.constraint(equalToConstant: 20),
            
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
        
        emailBottomLine.backgroundColor = UIColor.black.cgColor
        
        self.contentView.addSubview(emailField)
        self.emailField.layer.addSublayer(emailBottomLine)
        
        NSLayoutConstraint.activate( [
        
            emailField.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 28),
            emailField.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            emailField.topAnchor.constraint(equalTo: self.emailTitle.bottomAnchor, constant: 11),
            emailField.rightAnchor.constraint(equalTo: self.contentView.rightAnchor, constant: -28),
            emailField.heightAnchor.constraint(equalToConstant: 24)

        ] )
        
    }
    
    private func loadPasswordTitle() {
        
        passTitle.translatesAutoresizingMaskIntoConstraints = false
        passTitle.text = "Password"
        passTitle.font = UIFont(name: "Poppins-Medium", size: 13)
        
        self.contentView.addSubview(passTitle)
        
        NSLayoutConstraint.activate( [
            
            passTitle.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 28.48),
            passTitle.topAnchor.constraint(equalTo: self.emailField.bottomAnchor, constant: 58),
            passTitle.widthAnchor.constraint(equalToConstant: 65),
            passTitle.heightAnchor.constraint(equalToConstant: 20),
            
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
        
        passBottomLine.backgroundColor = UIColor.black.cgColor
        
        self.contentView.addSubview(passField)
        self.passField.layer.addSublayer(passBottomLine)
        
        NSLayoutConstraint.activate( [
        
            passField.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 27),
            passField.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            passField.topAnchor.constraint(equalTo: self.passTitle.bottomAnchor, constant: 12),
            passField.heightAnchor.constraint(equalToConstant: 20)

        ] )
        
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
        
        self.contentView.addSubview(rememberMeButton)
        
        NSLayoutConstraint.activate( [
        
            rememberMeButton.topAnchor.constraint(equalTo: self.passField.bottomAnchor, constant: 23),
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
        
        self.contentView.addSubview(button)
        
        NSLayoutConstraint.activate( [
        
            button.topAnchor.constraint(equalTo: self.passField.bottomAnchor, constant: 23),
            button.rightAnchor.constraint(equalTo: self.contentView.rightAnchor, constant: -28)
        
        ] )
        
    }
    
    private func loadLoginButton() {
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.configuration = .filled()
        loginButton.configuration?.title = "Login"
        loginButton.configuration?.baseBackgroundColor = UIColor(red: 1, green: 67 / 255, blue: 42 / 255, alpha: 1)
        loginButton.configuration?.baseForegroundColor = UIColor.white
        loginButton.configuration?.background.cornerRadius = 32.0
        loginButton.configuration?.attributedTitle = AttributedString("Login")
        loginButton.configuration?.attributedTitle?.font = UIFont(name: "Poppins-Medium", size: 17.0)
        
        loginButton.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        loginButton.layer.shadowColor = UIColor.black.cgColor
        loginButton.layer.shadowOpacity = 0.25
        loginButton.layer.shadowRadius = 26
        
        self.contentView.addSubview(loginButton)
        
        NSLayoutConstraint.activate( [
        
            loginButton.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: self.rememberMeButton.bottomAnchor, constant: 60),
            loginButton.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 28.48),
            loginButton.heightAnchor.constraint(equalToConstant: 53.0)
            
        ] )
    }
    
    private func loadLoginOptionsTitle() {
        
        optionsTitle.translatesAutoresizingMaskIntoConstraints = false
        optionsTitle.text = "or continue with"
        optionsTitle.font = UIFont(name: "Poppins-Medium", size: 16)
        optionsTitle.textColor = UIColor(red: 181 / 255, green: 181 / 255, blue: 181 / 255, alpha: 1.0)
        
        self.contentView.addSubview(optionsTitle)

        NSLayoutConstraint.activate( [
            
            optionsTitle.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            optionsTitle.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor, constant: 42),
            
        ] )
    }
    
    private func loadLoginOptionsLogos() {
        
        appleLogo.translatesAutoresizingMaskIntoConstraints = false
        facebookLogo.translatesAutoresizingMaskIntoConstraints = false
        googleLogo.translatesAutoresizingMaskIntoConstraints = false
        
        appleLogo.setImage(UIImage(named: "apple"), for: .normal)
        facebookLogo.setImage(UIImage(named: "Facebook"), for: .normal)
        googleLogo.setImage(UIImage(named: "google"), for: .normal)
        
        self.contentView.addSubview(appleLogo)
        self.contentView.addSubview(facebookLogo)
        self.contentView.addSubview(googleLogo)
        
        NSLayoutConstraint.activate( [
            
            appleLogo.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            appleLogo.topAnchor.constraint(equalTo: self.optionsTitle.bottomAnchor, constant: 25),
            
            facebookLogo.rightAnchor.constraint(equalTo: appleLogo.leftAnchor, constant: -17),
            facebookLogo.topAnchor.constraint(equalTo: self.optionsTitle.bottomAnchor, constant: 25),
            
            googleLogo.leftAnchor.constraint(equalTo: appleLogo.rightAnchor, constant: 17),
            googleLogo.topAnchor.constraint(equalTo: self.optionsTitle.bottomAnchor, constant: 25),
            
            appleLogo.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -18)
            
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
        
        self.contentView.addSubview(eightCharMessage)
        self.contentView.addSubview(specialCharMessage)
        self.contentView.addSubview(upperCharMessage)
        
        NSLayoutConstraint.activate( [
        
            eightCharMessage.topAnchor.constraint(equalTo:self.rememberMeButton.bottomAnchor, constant: 5),
            eightCharMessage.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 27.3),
            
            specialCharMessage.topAnchor.constraint(equalTo: eightCharMessage.bottomAnchor, constant: -5),
            specialCharMessage.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 27.3),
            
            upperCharMessage.topAnchor.constraint(equalTo: specialCharMessage.bottomAnchor, constant: -5),
            upperCharMessage.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 27.3)
            
        ] )
    }
    
    func setupKeyboardHiding() {
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(sender: NSNotification) {
        
        guard let userInfo = sender.userInfo,
              let keyboardFrame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue,
              let currentTextField = UIResponder.currentFirst() as? UITextField else { return }
        
        let keyboardTopY = keyboardFrame.cgRectValue.origin.y
        let convertedTextFieldFrame = view.convert(currentTextField.frame, from: currentTextField.superview)
        let textFieldBottomY = convertedTextFieldFrame.origin.y + convertedTextFieldFrame.size.height

        if textFieldBottomY > keyboardTopY {
            let textBoxY = convertedTextFieldFrame.origin.y
            let newFrameY = (textBoxY - keyboardTopY / 2)
            view.frame.origin.y = -newFrameY
        }

    }
    
    @objc func keyboardWillHide() {
        
        view.frame.origin.y = 0
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

extension UIResponder {

    private struct Static {
        static weak var responder: UIResponder?
    }

    /// Finds the current first responder
    /// - Returns: the current UIResponder if it exists
    static func currentFirst() -> UIResponder? {
        Static.responder = nil
        UIApplication.shared.sendAction(#selector(UIResponder._trap), to: nil, from: nil, for: nil)
        return Static.responder
    }

    @objc private func _trap() {
        Static.responder = self
    }
}
