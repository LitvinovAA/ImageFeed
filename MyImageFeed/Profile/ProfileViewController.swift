//
//  ProfileViewController.swift
//  MyImageFeed
//
//  Created by Alexey on 13.03.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    
        private lazy var avatarImageView: UIImageView = {
            let image = UIImageView()
            image.image = Profile.defaultAvatar
            image.translatesAutoresizingMaskIntoConstraints = false
            return image
        }()

    private lazy var logoutButton: UIButton = {
        let imageButton = Profile.logoutButtonImage
        let button = UIButton.systemButton(
            with: imageButton!,
            target: self,
            action: #selector(Self.didTapButton))
        button.tintColor = Colors.ypRed
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Екатерина Новикова"
        label.textColor = Colors.ypWhite
        label.font = UIFont.systemFont(ofSize: 23, weight: UIFont.Weight.bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var loginNameLabel: UILabel = {
        let label = UILabel()
        label.text = "@ekaterina_nov"
        label.textColor = Colors.ypGray
        label.font = UIFont.systemFont(ofSize: 13, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello, world!"
        label.textColor = Colors.ypWhite
        label.font = UIFont.systemFont(ofSize: 13, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        addView()
        addConstraint()
    }

    func addView() {
        [avatarImageView, logoutButton, nameLabel, loginNameLabel, descriptionLabel].forEach {view.addSubview($0)}
    }

    func addConstraint() {
        NSLayoutConstraint.activate([
            avatarImageView.heightAnchor.constraint(equalToConstant: 70),
            avatarImageView.widthAnchor.constraint(equalToConstant: 70),
            avatarImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 76),
            avatarImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),

            logoutButton.heightAnchor.constraint(equalToConstant: 22),
            logoutButton.widthAnchor.constraint(equalToConstant: 20),
            logoutButton.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor),
            logoutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26),

            nameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),

            loginNameLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            loginNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),

            descriptionLabel.leadingAnchor.constraint(equalTo: loginNameLabel.leadingAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: loginNameLabel.bottomAnchor, constant: 8),
        ])
    }

        @objc private func didTapButton() {
            print("Did logout")
        }
}
