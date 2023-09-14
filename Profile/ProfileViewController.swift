//
//  ProfileViewController.swift
//  ImageFeedTop
//
//  Created by Андрей Назаркин on 21.08.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    private let profileImage: UIImageView = {
        let profileImage = UIImageView()
        profileImage.image = UIImage(named: "Avatar")
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        return profileImage
    }()
    
    private let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Екатерина Новикова"
        nameLabel.font = .systemFont(ofSize: 23, weight: .bold)
        nameLabel.textColor = .ypWhite
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameLabel
    }()
    
    private let nickLabel: UILabel = {
        let nickLabel = UILabel()
        nickLabel.text = "@ekaterina_nov"
        nickLabel.font = .systemFont(ofSize: 13, weight: .regular)
        nickLabel.textColor = .ypGray
        nickLabel.translatesAutoresizingMaskIntoConstraints = false
        return nickLabel
    }()
    
    private let helloLabel: UILabel = {
        let helloLabel = UILabel()
        helloLabel.text = "Hello, world!"
        helloLabel.font = .systemFont(ofSize: 13, weight: .regular)
        helloLabel.textColor = .ypWhite
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        return helloLabel
    }()
    
    private let exitButton: UIButton = {
        let exitButton = UIButton()
        exitButton.setImage(UIImage(named: "Exit_button"), for: .normal)
        exitButton.translatesAutoresizingMaskIntoConstraints = false
        return exitButton
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        applyConstraints()
        view.backgroundColor = .ypBlack
    }
    
    private func addSubViews() {
        view.addSubview(profileImage)
        view.addSubview(nameLabel)
        view.addSubview(nickLabel)
        view.addSubview(helloLabel)
        view.addSubview(exitButton)
    }
    
    private func applyConstraints() {
        NSLayoutConstraint.activate([
            profileImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 76),
            profileImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            profileImage.heightAnchor.constraint(equalToConstant: 70),
            profileImage.widthAnchor.constraint(equalToConstant: 70),
        ])
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -124),
        ])
        
        NSLayoutConstraint.activate([
            nickLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            nickLabel.leadingAnchor.constraint(equalTo: profileImage.leadingAnchor),
        ])
        
        NSLayoutConstraint.activate([
            helloLabel.topAnchor.constraint(equalTo: nickLabel.bottomAnchor, constant: 8),
            helloLabel.leadingAnchor.constraint(equalTo: profileImage.leadingAnchor),
            
        ])
        
        NSLayoutConstraint.activate([
            exitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26),
            exitButton.centerYAnchor.constraint(equalTo: profileImage.centerYAnchor)
        ])
    }
}
extension UIColor {
    static let ypWhite = UIColor(named: "YPWhite")
    static let ypRed = UIColor(named: "YPRed")
    static let ypBlack = UIColor(named: "YPBlack")
    static let ypGray = UIColor(named: "YPGray")
}



