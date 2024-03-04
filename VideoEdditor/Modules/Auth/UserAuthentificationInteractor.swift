// MARK: - Imports

import Foundation

protocol UserAuthentificationBusinessLogic {
    func fetchScreenData()
}

// MARK: - UserAuthentificationInteractor

final class UserAuthentificationInteractor {
    
    // MARK: - Private Properties
    
    private let presenter: PresentsUserAuthentification
    
    // MARK: - Initialization
    
    init(
        presenter: PresentsUserAuthentification
    ) {
        self.presenter = presenter
    }
}

// MARK: - UserAuthentificationBusinessLogic

extension UserAuthentificationInteractor: UserAuthentificationBusinessLogic {
    func fetchScreenData() {
        presenter.presentScreenData()
    }
}
