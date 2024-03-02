// MARK: - Imports

import UIKit

// MARK: - UserAuthenticationViewController

class UserAuthenticationViewController: UIViewController {
    
    let contentView: UIView = UserAuthentificationView()

    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(contentView)
    
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
}
