//
//  ProfileViewController.swift
//  Navigation
//
//  Created by 마리나 on 06.05.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
    
    //MARK: - Private properties
    
//    private var avatarImageView: UIImageView!
//
//    // MARK: - Constants
//
//    private let headerHeight: CGFloat = 200
//    private let photosCellHeight: CGFloat = 150
//
//    // MARK: - UI Components
//
//    private lazy var tableView: UITableView = {
//        let tableView = UITableView(frame: .zero, style: .grouped)
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//        tableView.rowHeight = UITableView.automaticDimension
////        tableView.register(ProfileTableHeaderView.self, forHeaderFooterViewReuseIdentifier: "ProfileTableHeaderView")
////        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "PostTableViewCell")
////        tableView.register(PhotosTableViewCell.self, forCellReuseIdentifier: PhotosTableViewCell.identifier)
//        tableView.delegate = self
//        tableView.dataSource = self
//        return tableView
//    }()
//
//    private lazy var closeButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setImage(UIImage(systemName: "xmark"), for: .normal)
//        button.tintColor = .white
//        button.alpha = 0
//        button.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
//        return button
//    }()
//
//    private lazy var overlayView: UIView = {
//        let overlayView = UIView(frame: view.bounds)
//        overlayView.translatesAutoresizingMaskIntoConstraints = false
//        overlayView.backgroundColor = UIColor.black.withAlphaComponent(0)
//        return overlayView
//    }()
//
//    //MARK: - Lifecycle
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .white
//        setupTableView()
//        navigationController?.navigationBar.isHidden = true
//    }
//
//    //MARK: - Private func
//
//    private func setupTableView() {
//        view.addSubview(tableView)
//        NSLayoutConstraint.activate([
//            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
//            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
//        ])
//    }
//
//    private func createCornerRadiusAnimation(from fromValue: CGFloat, to toValue: CGFloat, duration: CFTimeInterval) -> CABasicAnimation {
//        let animation = CABasicAnimation(keyPath: "cornerRadius")
//        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
//        animation.fromValue = fromValue
//        animation.toValue = toValue
//        animation.duration = duration
//        return animation
//    }
//
////    func animateAvatar(profileHeaderView: ProfileHeaderView) {
////        setupOverlayView()
////        setupCloseButton()
////
////        let originalAvatarFrame = setupAvatarImageView(profileHeaderView: profileHeaderView)
////
////        animateAvatarImageView(originalAvatarFrame: originalAvatarFrame)
////    }
//
//    private func setupOverlayView() {
//        view.addSubview(overlayView)
//        NSLayoutConstraint.activate([
//            overlayView.topAnchor.constraint(equalTo: view.topAnchor),
//            overlayView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            overlayView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            overlayView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
//        ])
//    }
//
//    private func setupCloseButton() {
//        view.addSubview(closeButton)
//        NSLayoutConstraint.activate([
//                closeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
//                closeButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
//                closeButton.widthAnchor.constraint(equalToConstant: 30),
//                closeButton.heightAnchor.constraint(equalToConstant: 30)
//            ])
//    }
//
//    private func setupAvatarImageView(profileHeaderView: ProfileHeaderView) -> CGRect {
//        let originalAvatarFrame = profileHeaderView.convert(profileHeaderView.avatarImageView.frame, to: view)
//        avatarImageView = UIImageView(frame: originalAvatarFrame)
//        avatarImageView.image = profileHeaderView.avatarImageView.image
//        avatarImageView.contentMode = .scaleAspectFill
//        avatarImageView.layer.cornerRadius = 50
//        avatarImageView.clipsToBounds = true
//
//        view.addSubview(avatarImageView)
//
//        let cornerRadiusAnimation = createCornerRadiusAnimation(from: avatarImageView.layer.cornerRadius, to: 0, duration: 0.5)
//        avatarImageView.layer.add(cornerRadiusAnimation, forKey: "cornerRadius")
//        avatarImageView.layer.cornerRadius = 0
//
//        return originalAvatarFrame
//    }
//
//    private func animateAvatarImageView(originalAvatarFrame: CGRect) {
//        let aspectRatio = originalAvatarFrame.height / originalAvatarFrame.width
//        let screenWidth = view.bounds.width
//        let screenHeight = view.bounds.height
//        let maxSize = min(screenWidth, screenHeight)
//
//        let finalAvatarWidth = maxSize * 1
//        let finalAvatarHeight = finalAvatarWidth * aspectRatio
//        let finalAvatarX = (screenWidth - finalAvatarWidth) / 2
//        let finalAvatarY = (screenHeight - finalAvatarHeight) / 2
//
//        let finalAvatarFrame = CGRect(x: finalAvatarX, y: finalAvatarY, width: finalAvatarWidth, height: finalAvatarHeight)
//
//        UIView.animate(withDuration: 0.5, animations: {
//          self.avatarImageView.frame = finalAvatarFrame
//            self.overlayView.backgroundColor = UIColor.black.withAlphaComponent(0.5)
//        }) { _ in
//            UIView.animate(withDuration: 0.3) {
//                self.closeButton.alpha = 1
//            }
//        }
//    }
//
//    // MARK: - Actions
//
//    @objc func closeButtonTapped() {
//        UIView.animate(withDuration: 0.3, animations: {
//            self.closeButton.alpha = 0
//        }) { _ in
//            guard let profileHeaderView = self.tableView.headerView(forSection: 0) as? ProfileTableHeaderView else { return }
//            let originalAvatarFrame = profileHeaderView.convert(profileHeaderView.profileHeaderView.avatarImageView.frame, to: self.view)
//
//            UIView.animate(withDuration: 0.5, animations: {
//                self.avatarImageView.frame = originalAvatarFrame
//                self.overlayView.backgroundColor = UIColor.black.withAlphaComponent(0)
//            }) { _ in
//                self.avatarImageView.removeFromSuperview()
//                self.overlayView.removeFromSuperview()
//            }
//        }
//    }
//}
//
//// MARK: - UITableViewDelegate, UITableViewDataSource
//extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 2
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if section == 0 {
//            return 1
//        } else {
//            return  posts.count
//        }
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.section == 0  {
//            let cell = tableView.dequeueReusableCell(withIdentifier: PhotosTableViewCell.identifier, for: indexPath) as! PhotosTableViewCell
//            return cell
//        } else  {
//            let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier, for: indexPath) as! PostTableViewCell
//            cell.configure(with: posts[indexPath.row])
//            return cell
//        }
//    }
//
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        if section == 0 {
//            let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "ProfileTableHeaderView") as! ProfileTableHeaderView
//            return header
//        } else {
//            return nil
//        }
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let photosViewController = PhotosViewController()
//        if indexPath.section == 0 {
//            navigationController?.pushViewController(photosViewController, animated: true)
//        }
//    }
//
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        if section == 0 {
//            return headerHeight
//        } else {
//            return 0
//        }
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.section == 0 {
//            return photosCellHeight
//        } else {
//            return UITableView.automaticDimension
//        }
//    }
//}
