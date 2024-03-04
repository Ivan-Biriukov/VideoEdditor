// MARK: - Imports

import Foundation

// MARK: - UserAuthentificationFactory

final class UserAuthentificationFactory<Routes: UserAuthentificationRoutes>: Factory {
    typealias Context = Void
    typealias ViewController = UserAuthenticationViewController<Routes>
    
    func build(from context: Context) -> ViewController {
        
        let presenter = UserAuthentificationPresenter()
        let interactor = UserAuthentificationInteractor(
            presenter: presenter
        )
        let viewController = UserAuthenticationViewController<Routes>(interactor: interactor)
        
        presenter.viewController = viewController
        
        return viewController
    }
}
