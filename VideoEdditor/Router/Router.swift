// MARK: - Imports

import UIKit

// MARK: - Router

final class Router {
    
    private static let navigationController = UINavigationController()
    private init() {}
}

// MARK: - Base Methods

 extension Router {
    
    static func startRouting() -> UINavigationController {
        return navigationController
    }
    
    static func performRoute<F>(factory: F, context: F.Context, animated: Bool = true) where F: Factory, F.ViewController: UIViewController {
        let viewController = factory.build(from: context)
        
        navigationController.pushViewController(viewController, animated: animated)
    }
}

// MARK: - Login Screen

extension Router: UserAuthentificationRoutes {
    
    static func subscriptionScreen() {
        performRoute(factory: UserAuthentificationFactory<Self>(), context: ())
    }
}

extension Router {
    static func userAuthenticationScreen() {
        performRoute(factory: UserAuthentificationFactory<Self>(), context: ())
    }
}
