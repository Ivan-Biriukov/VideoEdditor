// MARK: - Imports

import UIKit

// MARK: - DisplaysUserAuthentificationProtocol

protocol DisplaysUserAuthentification: AnyObject {
    func displayError()
    func displaySubscriptionVC()
    func displayAuthentificationData(viewModel: UserAuthentificationView.ViewModel)
}

// MARK: - UserAuthenticationViewController

class UserAuthenticationViewController<Routes: UserAuthentificationRoutes>: UIViewController {
    
    private lazy var contentView = UserAuthentificationView()
    private let interactor: UserAuthentificationBusinessLogic
    
    //MARK: - initialization
    
    init(interactor: UserAuthentificationBusinessLogic) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - LifeCycle Methids
    
    override func loadView() {
        view = contentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        interactor.fetchScreenData()
    }
}

// MARK: - DisplaysUserAuthentication

extension UserAuthenticationViewController: DisplaysUserAuthentification {
    
    func displayAuthentificationData(viewModel: UserAuthentificationView.ViewModel) {
        let viewModel = viewModel
        contentView.configure(with: viewModel)
    }
    
    func displayError() {
        print("sfsfsdfssfd")
    }
    
    func displaySubscriptionVC() {
        Routes.subscriptionScreen()
    }
}
