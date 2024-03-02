// MARK: - Imports

import UIKit
import VideoEditorUI
import SnapKit

// MARK: - Appiarence

fileprivate enum Appiarence {
    
    static let logoImageCornerRadius: CGFloat = 8
    static let logoSizes: CGFloat = 39
    static let logoTopInset: CGFloat = 184
    static let buttonsStackSpacing: CGFloat = 6
    static let logoTitleSpace: CGFloat = 19
    static let titleStackSpace: CGFloat = 56
    static let stackEdgeInsets: CGFloat = 41.5
    static let bottomLabeEdgeInsets: CGFloat = 36.5
    static let bottomLabelBottomInsets: CGFloat = 44
    static let socialButtonsHeight: CGFloat = 45
    static let socialButtonsWidth: CGFloat = UIScreen.main.bounds.width - 83
}

// MARK: - UserAuthentificationView

final class UserAuthentificationView: UIView {

    // MARK: - UI Elements
    
    private let logoImage: UIImageView = {
        let img = UIImageView(image: .mainLogoImage())
        img.clipsToBounds = false
        img.layer.cornerRadius = Appiarence.logoImageCornerRadius
        return img
    }()
    
    private let titleLabel: UILabel = .elementsTitleLabel(with: "Get instant Free access.", rows: 1)
    
    private let tikTokBtn: SocialButton = .init(bStyle: .tikTok)
    private let googleBtn: SocialButton = .init(bStyle: .gMail)
    private let faceBookBtn: SocialButton = .init(bStyle: .faceBook)
    private let appleBtn: SocialButton = .init(bStyle: .apple)
    private let emailBtn: SocialButton = .init(bStyle: .email)
    
    private lazy var buttonStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [
            tikTokBtn,
            googleBtn,
            faceBookBtn,
            appleBtn,
            emailBtn
        ])
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .center
        stack.spacing = Appiarence.buttonsStackSpacing
        return stack
    }()
    
    private lazy var bottomLabel: UILabel = .smallDarkGrayLabels(with: "By signing up you agree to our Terms and conditions and agree to recive our Newsletter.", rows: 0)
    
    // MARK: - Init
    
    init() {
        super.init(frame: .zero)
        addSubviews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - Configure

private extension UserAuthentificationView {
    
    func addSubviews() {
        [logoImage, titleLabel, buttonStack, bottomLabel].forEach({self.addSubview($0)})
    }
    
    func setupConstraints() {
     
        logoImage.snp.makeConstraints { make in
            make.width.height.equalTo(Appiarence.logoSizes)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(Appiarence.logoTopInset)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logoImage.snp.bottom).offset(Appiarence.logoTitleSpace)
        }
        
        buttonStack.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(Appiarence.titleStackSpace)
            make.centerX.equalToSuperview()
        }
        
        bottomLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(Appiarence.bottomLabeEdgeInsets)
            make.bottom.equalToSuperview().inset(Appiarence.bottomLabelBottomInsets)
        }
        
        [tikTokBtn, googleBtn, faceBookBtn, appleBtn, emailBtn].forEach({$0.snp.makeConstraints { make in
            make.height.equalTo(Appiarence.socialButtonsHeight)
            make.width.equalTo(Appiarence.socialButtonsWidth)
        }})
    }
}
