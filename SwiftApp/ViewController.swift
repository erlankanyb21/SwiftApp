//
//  ViewController.swift
//  SwiftApp
//
//  Created by User on 10/15/24.
//

import UIKit

class ViewController: UIViewController {
    
    fileprivate func setupAuthorizationForm() {
        let emailTextField = UITextField()
        let passwordTextField = UITextField()
        let loginButton = UIButton(type: .system)
        
        // Настройка поля для ввода email
        emailTextField.placeholder = "Введите email"
        emailTextField.borderStyle = .roundedRect
        emailTextField.autocapitalizationType = .none
        emailTextField.keyboardType = .emailAddress
        
        // Настройка поля для ввода пароля
        passwordTextField.placeholder = "Введите пароль"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.isSecureTextEntry = true
        
        // Настройка кнопки входа
        loginButton.setTitle("Войти", for: .normal)
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        
        // Отключаем автоматические ограничения
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Добавляем элементы на view
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        
        // Устанавливаем ограничения
        NSLayoutConstraint.activate([
            emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.centerYAnchor.constraint(equalTo:emailTextField.bottomAnchor, constant: 25),
            
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor, constant: 30)
        ])
    }
    
    @objc fileprivate func loginButtonTapped() {
        // Здесь будет логика авторизации
        print("Кнопка входа нажата")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAuthorizationForm()
    }
}

#Preview() {
    ViewController()
}
