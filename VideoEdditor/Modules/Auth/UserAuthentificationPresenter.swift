// MARK: - PresentsUserAuthentification

protocol PresentsUserAuthentification {
    func presentScreenData()
    func presentSubscriptionVC()
}

// MARK: - UserAuthentificationPresenter

final class UserAuthentificationPresenter {
    
    weak var viewController: DisplaysUserAuthentification?
    
    init(viewController: DisplaysUserAuthentification? = nil) {
        self.viewController = viewController
    }
}

// MARK: - PresentsUserAuthentification

extension UserAuthentificationPresenter: PresentsUserAuthentification {
    func presentScreenData() {
        viewController?.displayAuthentificationData(viewModel:
                .init(
                    titleLabel: "Get instant Free access.",
                    bottomLabel: "By signing up you agree to our Terms and conditions and agree to recive our Newsletter."
                ))
    }
    
    func presentSubscriptionVC() {
        viewController?.displaySubscriptionVC()
    }
}
