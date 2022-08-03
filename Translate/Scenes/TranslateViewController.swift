//
//  TranslateViewController.swift
//  Translate
//
//  Created by 박지용 on 2022/08/03.
//

import UIKit
import SnapKit

final class TranslateViewController: UIViewController {
    private lazy var sourceLanguageButton: UIButton = {
        let button = UIButton()
        button.setTitle("한국어", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15.0, weight: .semibold)
        button.setTitleColor(.label, for: .normal)
        button.backgroundColor = .systemBackground
        button.layer.cornerRadius = 9.0
        
        return button
    }()
    
    private lazy var targetLanguageButton: UIButton = {
        let button = UIButton()
        button.setTitle("영어", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15.0, weight: .semibold)
        button.setTitleColor(.label, for: .normal)
        button.backgroundColor = .systemBackground
        button.layer.cornerRadius = 9.0
        
        return button
    }()
    
    private lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.spacing = 8.0
        
        [sourceLanguageButton, targetLanguageButton]
            .forEach{ stackView.addArrangedSubview($0) }
        
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .secondarySystemBackground
        
        setupViews()
    }
}

private extension TranslateViewController {
    func setupViews() {
        [buttonStackView]
            .forEach{ view.addSubview($0) }
        
        buttonStackView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.leading.equalToSuperview().inset(16.0)
            $0.trailing.equalToSuperview().inset(16.0)
            $0.height.equalTo(50.0)
        }
    }
}
