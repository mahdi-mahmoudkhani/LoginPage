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
        self.scrollViewSetup()
        self.loadItems()
        self.dismissKeyboard()
        self.setupKeyboardHiding()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.emailField.layoutIfNeeded()
        self.emailBottomLine.frame = CGRect(x: 0, y: self.emailField.bounds.height + 10, width: self.emailField.bounds.width, height: 2)
        
        self.passField.layoutIfNeeded()
        self.passBottomLine.frame = CGRect(x: 0, y: self.passField.bounds.height + 10, width: self.passField.bounds.width, height: 2)
    }
    
    private func scrollViewSetup() {
        
        self.view.addSubview(self.scrollView)
        self.scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        self.scrollView.addSubview(self.contentView)
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate( [
        
            self.scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            self.scrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            self.scrollView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            self.scrollView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            
            self.contentView.topAnchor.constraint(equalTo: self.scrollView.topAnchor),
            self.contentView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor),
            self.contentView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor),
            self.contentView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor),
            
            self.contentView.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor),
            self.contentView.heightAnchor.constraint(equalTo: self.contentView.heightAnchor)
            
        ] )
        
    }
    
    private func loadItems() {
        
        self.loadAppLogo()
        self.loadSignInTitle()
        self.loadRegisterMessage()
        self.loadEmailTitle()
        self.loadEmailField()
        self.loadPasswordTitle()
        self.loadPsswordField()
        self.loadRememberMe()
        self.loadForgotPassword()
        self.loadLoginButton()
        self.loadLoginOptionsTitle()
        self.loadLoginOptionsLogos()
        self.loadPassValidationMessage()
    }
    
    private func loadAppLogo() {
        
        self.logo.translatesAutoresizingMaskIntoConstraints = false
        self.logo.text = "Your Logo"
        self.logo.font = UIFont(name: "Poppins-SemiBold", size: 18)
        
        self.contentView.addSubview(self.logo)
        
        NSLayoutConstraint.activate( [
            
            self.logo.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 26),
            self.logo.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 18),
            self.logo.widthAnchor.constraint(equalToConstant: 90),
            self.logo.heightAnchor.constraint(equalToConstant: 27),
            
        ] )
        
    }
    
    private func loadSignInTitle() {
        
        self.SignInTitle.translatesAutoresizingMaskIntoConstraints = false
        self.SignInTitle.text = "Sign in"
        self.SignInTitle.font = UIFont(name: "Poppins-Medium", size: 30)
        
        self.contentView.addSubview(self.SignInTitle)

        NSLayoutConstraint.activate( [
            
            self.SignInTitle.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 28),
            self.SignInTitle.topAnchor.constraint(equalTo: self.logo.bottomAnchor, constant: 57),
            self.SignInTitle.widthAnchor.constraint(equalToConstant: 128),
            self.SignInTitle.heightAnchor.constraint(equalToConstant: 45),
            
        ] )
    }
    
    private func loadRegisterMessage() {
        
        self.registerMessageL1.translatesAutoresizingMaskIntoConstraints = false
        self.registerMessageL2.translatesAutoresizingMaskIntoConstraints = false
        self.registerButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.registerMessageL1.text = "If you don’t have an account register"
        self.registerMessageL1.font = UIFont(name: "Poppins-Regular", size: 16)
        
        self.registerMessageL2.text = "You can"
        self.registerMessageL2.font = UIFont(name: "Poppins-Regular", size: 16)
        
        self.registerButton.setTitle("Register here !", for: .normal)
        self.registerButton.setTitleColor(UIColor(red: 1, green: 67 / 255, blue: 42 / 255, alpha: 1), for: .normal)
        self.registerButton.titleLabel?.font = UIFont(name: "Poppins-SemiBold", size: 16)
        self.registerButton.setTitleColor(UIColor.gray, for: .highlighted)
        
        self.contentView.addSubview(self.registerMessageL1)
        self.contentView.addSubview(self.registerMessageL2)
        self.contentView.addSubview(self.registerButton)
        
        NSLayoutConstraint.activate( [
            
            self.registerMessageL1.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 28.48),
            self.registerMessageL1.topAnchor.constraint(equalTo: self.SignInTitle.bottomAnchor, constant: 22),
            self.registerMessageL1.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -31),
            
            self.registerMessageL2.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 28.48),
            self.registerMessageL2.topAnchor.constraint(equalTo: self.registerMessageL1.bottomAnchor, constant: 6),
            self.registerMessageL2.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -31),
            
            self.registerButton.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 107),
            self.registerButton.topAnchor.constraint(equalTo: self.registerMessageL1.bottomAnchor)
            
        ] )
    }
    
    private func loadEmailTitle() {
        
        self.emailTitle.translatesAutoresizingMaskIntoConstraints = false
        self.emailTitle.text = "Email"
        self.emailTitle.font = UIFont(name: "Poppins-Medium", size: 13)
        
        self.contentView.addSubview(self.emailTitle)
        
        NSLayoutConstraint.activate( [
            
            self.emailTitle.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 28.48),
            self.emailTitle.topAnchor.constraint(equalTo: self.registerMessageL2.bottomAnchor, constant: 52),
            self.emailTitle.widthAnchor.constraint(equalToConstant: 36),
            self.emailTitle.heightAnchor.constraint(equalToConstant: 20),
            
        ] )
    }
    
    private func loadEmailField() {

        let leftViewPadding = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: self.emailField.frame.height))
        let messageImageView = UIImageView(image: UIImage(named: "message"))
        
        messageImageView.contentMode = .left
        messageImageView.frame = CGRect(x: 0, y: 0, width: 20, height: self.emailField.frame.height)
        leftViewPadding.addSubview(messageImageView)
        
        self.emailField.translatesAutoresizingMaskIntoConstraints = false
        self.emailField.attributedPlaceholder = NSAttributedString(string: "Enter your email address", attributes: [
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.font : UIFont(name: "Poppins-Regular", size: 16.0) as Any ] )
        
        self.emailField.leftView = leftViewPadding
        self.emailField.leftViewMode = .always
        self.emailField.textContentType = .emailAddress
        self.emailField.keyboardType = .emailAddress
        self.emailField.returnKeyType = .done
        self.emailField.enablesReturnKeyAutomatically = true

        self.emailField.addTarget(self, action: #selector(UIViewController.dismissKeyboardTouchOutside), for: .editingDidEndOnExit)
        self.emailField.addTarget(self, action: #selector(self.changeEmailButtomLineColor), for: .allEvents)
        
        self.emailBottomLine.backgroundColor = UIColor.black.cgColor
        
        self.contentView.addSubview(self.emailField)
        self.emailField.layer.addSublayer(self.emailBottomLine)
        
        NSLayoutConstraint.activate( [
        
            self.emailField.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 28),
            self.emailField.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            self.emailField.topAnchor.constraint(equalTo: self.emailTitle.bottomAnchor, constant: 11),
            self.emailField.rightAnchor.constraint(equalTo: self.contentView.rightAnchor, constant: -28),
            self.emailField.heightAnchor.constraint(equalToConstant: 24)

        ] )
        
    }
    
    private func loadPasswordTitle() {
        
        self.passTitle.translatesAutoresizingMaskIntoConstraints = false
        self.passTitle.text = "Password"
        self.passTitle.font = UIFont(name: "Poppins-Medium", size: 13)
        
        self.contentView.addSubview(self.passTitle)
        
        NSLayoutConstraint.activate( [
            
            self.passTitle.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 28.48),
            self.passTitle.topAnchor.constraint(equalTo: self.emailField.bottomAnchor, constant: 58),
            self.passTitle.widthAnchor.constraint(equalToConstant: 65),
            self.passTitle.heightAnchor.constraint(equalToConstant: 20),
            
        ] )
    }
    
    private func loadPsswordField() {
        
        let leftViewFrame = UIView(frame: CGRect(x: 0, y: 0, width: 27, height: self.passField.frame.height))
        let leftViewImage = UIImageView(image: UIImage(named: "padlock"))
        
        leftViewImage.contentMode = .left
        leftViewImage.frame = CGRect(x: 0, y: 0, width: 20, height: self.passField.frame.height)
        leftViewFrame.addSubview(leftViewImage)
        
        self.passField.translatesAutoresizingMaskIntoConstraints = false
        self.passField.attributedPlaceholder = NSAttributedString(string: "Enter your Password", attributes: [
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.font : UIFont(name: "Poppins-Regular", size: 13.0) as Any ] )
        self.passField.leftView = leftViewFrame
    
        self.passIsVisible.setImage(UIImage(named: "invisible"), for: .normal)
        self.passIsVisible.setImage(UIImage(named: "eye-fill"), for: .highlighted)
        self.passIsVisible.addTarget(self, action: #selector(self.changePassVisibility), for: [.touchDown, .touchUpInside])
        self.passField.rightView = self.passIsVisible

        self.passField.leftViewMode = .always
        self.passField.rightViewMode = .always
        
        self.passField.returnKeyType = .done
        self.passField.enablesReturnKeyAutomatically = true
        self.passField.isSecureTextEntry = true
        
        self.passField.addTarget(self, action: #selector(UIViewController.dismissKeyboardTouchOutside), for: .editingDidEndOnExit)
        self.passField.addTarget(self, action: #selector(self.changePassButtomLineColor), for: .allEvents)
        self.passField.addTarget(self, action: #selector(self.checkPass), for: .allEditingEvents)
        
        self.passBottomLine.backgroundColor = UIColor.black.cgColor
        
        self.contentView.addSubview(self.passField)
        self.passField.layer.addSublayer(self.passBottomLine)
        
        NSLayoutConstraint.activate( [
        
            self.passField.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 27),
            self.passField.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            self.passField.topAnchor.constraint(equalTo: self.passTitle.bottomAnchor, constant: 12),
            self.passField.heightAnchor.constraint(equalToConstant: 20)

        ] )
        
    }
    
    private func loadRememberMe() {
        
        self.rememberMeButton.translatesAutoresizingMaskIntoConstraints = false
        self.rememberMeButton.configuration = .plain()
        self.rememberMeButton.configuration?.image = UIImage(named: "Rectangle")
        self.rememberMeButton.configuration?.imagePadding = 6.0
        self.rememberMeButton.configuration?.attributedTitle = AttributedString("Remember me")
        self.rememberMeButton.configuration?.attributedTitle?.font = UIFont(name: "Poppins-Light", size: 12)
        self.rememberMeButton.configuration?.baseBackgroundColor = UIColor.systemBackground
        self.rememberMeButton.configuration?.baseForegroundColor = UIColor.black
        self.rememberMeButton.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 6.0, leading: 0.0, bottom: 0.0, trailing: 0.0)
        self.rememberMeButton.addTarget(self, action: #selector(self.changeRememberCheckBox), for: .touchUpInside)
        
        self.contentView.addSubview(self.rememberMeButton)
        
        NSLayoutConstraint.activate( [
        
            self.rememberMeButton.topAnchor.constraint(equalTo: self.passField.bottomAnchor, constant: 23),
            self.rememberMeButton.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 29)
            
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
        
        self.loginButton.translatesAutoresizingMaskIntoConstraints = false
        self.loginButton.configuration = .filled()
        self.loginButton.configuration?.title = "Login"
        self.loginButton.configuration?.baseBackgroundColor = UIColor(red: 1, green: 67 / 255, blue: 42 / 255, alpha: 1)
        self.loginButton.configuration?.baseForegroundColor = UIColor.white
        self.loginButton.configuration?.background.cornerRadius = 32.0
        self.loginButton.configuration?.attributedTitle = AttributedString("Login")
        self.loginButton.configuration?.attributedTitle?.font = UIFont(name: "Poppins-Medium", size: 17.0)
        
        self.loginButton.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        self.loginButton.layer.shadowColor = UIColor.black.cgColor
        self.loginButton.layer.shadowOpacity = 0.25
        self.loginButton.layer.shadowRadius = 26
        
        self.contentView.addSubview(self.loginButton)
        
        NSLayoutConstraint.activate( [
        
            self.loginButton.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            self.loginButton.topAnchor.constraint(equalTo: self.rememberMeButton.bottomAnchor, constant: 60),
            self.loginButton.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 28.48),
            self.loginButton.heightAnchor.constraint(equalToConstant: 53.0)
            
        ] )
    }
    
    private func loadLoginOptionsTitle() {
        
        self.optionsTitle.translatesAutoresizingMaskIntoConstraints = false
        self.optionsTitle.text = "or continue with"
        self.optionsTitle.font = UIFont(name: "Poppins-Medium", size: 16)
        self.optionsTitle.textColor = UIColor(red: 181 / 255, green: 181 / 255, blue: 181 / 255, alpha: 1.0)
        
        self.contentView.addSubview(self.optionsTitle)

        NSLayoutConstraint.activate( [
            
            self.optionsTitle.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            self.optionsTitle.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor, constant: 42),
            
        ] )
    }
    
    private func loadLoginOptionsLogos() {
        
        self.appleLogo.translatesAutoresizingMaskIntoConstraints = false
        self.facebookLogo.translatesAutoresizingMaskIntoConstraints = false
        self.googleLogo.translatesAutoresizingMaskIntoConstraints = false
        
        self.appleLogo.setImage(UIImage(named: "apple"), for: .normal)
        self.facebookLogo.setImage(UIImage(named: "Facebook"), for: .normal)
        self.googleLogo.setImage(UIImage(named: "google"), for: .normal)
        
        self.contentView.addSubview(self.appleLogo)
        self.contentView.addSubview(self.facebookLogo)
        self.contentView.addSubview(self.googleLogo)
        
        NSLayoutConstraint.activate( [
            
            self.appleLogo.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            self.appleLogo.topAnchor.constraint(equalTo: self.optionsTitle.bottomAnchor, constant: 25),
            self.facebookLogo.rightAnchor.constraint(equalTo: self.appleLogo.leftAnchor, constant: -17),
            self.facebookLogo.topAnchor.constraint(equalTo: self.optionsTitle.bottomAnchor, constant: 25),
            
            self.googleLogo.leftAnchor.constraint(equalTo: self.appleLogo.rightAnchor, constant: 17),
            self.googleLogo.topAnchor.constraint(equalTo: self.optionsTitle.bottomAnchor, constant: 25),
            
            self.appleLogo.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -18)
            
        ] )
    }
    
    private func loadPassValidationMessage() {
        
        let font = UIFont(name: "Poppins-SemiBold", size: 10)
        
        self.eightCharMessage.translatesAutoresizingMaskIntoConstraints = false
        
        self.eightCharMessage.configuration = .plain()
        self.eightCharMessage.configuration?.image = self.xMarkImage
        self.eightCharMessage.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)
        self.eightCharMessage.configuration?.imagePadding = 5.0
        self.eightCharMessage.configuration?.attributedTitle = AttributedString("at least 8 characters")
        self.eightCharMessage.configuration?.attributedTitle?.font = font
        self.eightCharMessage.tintColor = .systemRed
        self.eightCharMessage.isUserInteractionEnabled = false
        
        self.specialCharMessage.translatesAutoresizingMaskIntoConstraints = false
        
        self.specialCharMessage.configuration = .plain()
        self.specialCharMessage.configuration?.image = self.xMarkImage
        self.specialCharMessage.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)
        self.specialCharMessage.configuration?.imagePadding = 5.0
        self.specialCharMessage.configuration?.attributedTitle = AttributedString("at least one special character")
        self.specialCharMessage.configuration?.attributedTitle?.font = font
        self.specialCharMessage.tintColor = .systemRed
        self.specialCharMessage.isUserInteractionEnabled = false
        
        self.upperCharMessage.translatesAutoresizingMaskIntoConstraints = false
        
        self.upperCharMessage.configuration = .plain()
        self.upperCharMessage.configuration?.image = self.xMarkImage
        self.upperCharMessage.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)
        self.upperCharMessage.configuration?.imagePadding = 5.0
        self.upperCharMessage.configuration?.attributedTitle = AttributedString("at least one uppercase character")
        self.upperCharMessage.configuration?.attributedTitle?.font = font
        self.upperCharMessage.tintColor = .systemRed
        self.upperCharMessage.isUserInteractionEnabled = false
        
        self.eightCharMessage.isHidden = true
        self.specialCharMessage.isHidden = true
        self.upperCharMessage.isHidden = true
        
        self.contentView.addSubview(self.eightCharMessage)
        self.contentView.addSubview(self.specialCharMessage)
        self.contentView.addSubview(self.upperCharMessage)
        
        NSLayoutConstraint.activate( [
        
            self.eightCharMessage.topAnchor.constraint(equalTo:self.rememberMeButton.bottomAnchor, constant: 5),
            self.eightCharMessage.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 27.3),
            
            self.specialCharMessage.topAnchor.constraint(equalTo: self.eightCharMessage.bottomAnchor, constant: -5),
            self.specialCharMessage.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 27.3),
            
            self.upperCharMessage.topAnchor.constraint(equalTo: self.specialCharMessage.bottomAnchor, constant: -5),
            self.upperCharMessage.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 27.3)
            
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
        
        self.passField.isSecureTextEntry = !self.passField.isSecureTextEntry
    }
    
    @objc func changeRememberCheckBox() {
        
        self.rememberMeButton.isSelected.toggle()
        
        if !self.rememberMeButton.isSelected {
            
            self.rememberMeButton.configuration?.image = UIImage(named: "Rectangle")
        } else {
            
            self.rememberMeButton.configuration?.image = UIImage(named: "checkbox-marked")
        }
    }
    
    @objc func changeEmailButtomLineColor() {
        
        if self.emailField.isEditing {
            
            self.emailBottomLine.backgroundColor = UIColor(red: 1, green: 67 / 255, blue: 42 / 255, alpha: 1).cgColor
        } else {
            
            self.emailBottomLine.backgroundColor = UIColor.black.cgColor
        }
    }
    
    @objc func changePassButtomLineColor() {
        
        if self.passField.isEditing {
            
            self.passBottomLine.backgroundColor = UIColor(red: 1, green: 67 / 255, blue: 42 / 255, alpha: 1).cgColor
        } else {
            
            self.passBottomLine.backgroundColor = UIColor.black.cgColor
        }
    }
    
    @objc func checkPass() {
        
        let pass = self.passField.text!
        
        if pass != "" {
            
            self.eightCharMessage.isHidden = false
            self.specialCharMessage.isHidden = false
            self.upperCharMessage.isHidden = false
            
        } else {
            
            self.eightCharMessage.isHidden = true
            self.specialCharMessage.isHidden = true
            self.upperCharMessage.isHidden = true
        }
        
        if pass.count >= 8 {
            
            self.eightCharMessage.tintColor = .systemGreen
            self.eightCharMessage.configuration?.image = self.checkMarkImage
        } else {
            
            self.eightCharMessage.tintColor = .systemRed
            self.eightCharMessage.configuration?.image = self.xMarkImage
        }
            
        
        let hasSpecialCharacters = pass.range(of: ".*[^A-Za-z0-9].*", options: .regularExpression) != nil
        if hasSpecialCharacters { 
            
            self.specialCharMessage.tintColor = .systemGreen
            self.specialCharMessage.configuration?.image = self.checkMarkImage
        } else {
            
            self.specialCharMessage.tintColor = .systemRed
            self.specialCharMessage.configuration?.image = self.xMarkImage
            
        }
        
        let hasUpperCharacters = pass.range(of: ".*[A-Z].*", options: .regularExpression) != nil
        if hasUpperCharacters {
            
            self.upperCharMessage.tintColor = .systemGreen
            self.upperCharMessage.configuration?.image = self.checkMarkImage
        } else {
            
            self.upperCharMessage.tintColor = .systemRed
            self.upperCharMessage.configuration?.image = self.xMarkImage
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
