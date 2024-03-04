// MARK: - Imports

import Foundation

// MARK: - ViewModelConfigurable

/// Протокол, описывающий cущности, конфигурируемые с помощью ViewModel
public protocol ViewModelConfigurable {
    associatedtype ViewModel
    func configure(with viewModel: ViewModel)
}
