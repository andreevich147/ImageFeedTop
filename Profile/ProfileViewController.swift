//
//  ProfileViewController.swift
//  ImageFeedTop
//
//  Created by Андрей Назаркин on 21.08.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    //    @IBOutlet private var avatarImageView: UIImageView!
    //    @IBOutlet private var nameLabel: UILabel!
    //    @IBOutlet private var loginNameLabel: UILabel!
    //    @IBOutlet private var descriptionLabel: UILabel!
    //
    //    @IBOutlet private var logoutButton: UIButton!
    //
    //    @IBAction private func didTapLogoutButton() {
    //    }
  
    private var label: UILabel?
    private var label2: UILabel?
    private var label3: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(image: UIImage(named: "Avatar"))
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        let label = UILabel()
        label.text = "Екатерина Новикова"
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.textColor = .white
        label.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8).isActive = true
        self.label = label
        label.widthAnchor.constraint(equalToConstant: 241).isActive = true
        label.heightAnchor.constraint(equalToConstant: 22).isActive = true
        label.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        
        let label2 = UILabel()
        label2.text = "@ekaterina_nov"
        label2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label2)
        label2.textColor = .gray
        label2.leadingAnchor.constraint(equalTo: label.leadingAnchor).isActive = true
        label2.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 8).isActive = true
        self.label2 = label2
        label2.widthAnchor.constraint(equalToConstant: 99).isActive = true
        label2.heightAnchor.constraint(equalToConstant: 18).isActive = true
        label2.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        
        let label3 = UILabel()
        label3.text = "Hello, world"
        label3.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label3)
        label3.textColor = .white
        label3.leadingAnchor.constraint(equalTo: label2.leadingAnchor).isActive = true
        label3.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 8).isActive = true
        self.label3 = label3
        label3.widthAnchor.constraint(equalToConstant: 77).isActive = true
        label3.heightAnchor.constraint(equalToConstant: 18).isActive = true
        label3.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        
        let button = UIButton.systemButton(
            with: UIImage(named: "Exit_button")!,
            target: self,
            action: #selector(Self.didTapButton)
        )
        button.tintColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        button.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44).isActive = true
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
    
    @objc private func didTapButton() {
    }
}



