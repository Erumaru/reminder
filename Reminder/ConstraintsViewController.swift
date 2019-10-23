//
//  ConstraintsViewController.swift
//  Reminder
//
//  Created by erumaru on 10/23/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit
import SnapKit

class ConstraintsViewController: UIViewController {

    var firstView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .red
        
        return view
    }()
    
    var secondView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor.yellow.cgColor
        view.layer.borderWidth = 4
        view.backgroundColor = .blue
        
        return view
    }()
    
    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textAlignment = .center
        label.text = ""
        let text = "fghjklkdfkhnsdflgjsdlghsdfjghsdfjkghdskjfghdjkfghjksdffhgjksdfhgkjsd"
        for i in 0...10 {
            label.text?.append(contentsOf: text)
        }
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        
        return label
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        markup()
    }
    
    // MARK: - Markup
    private func markup() {
        view.backgroundColor = .green
        
        view.addSubview(firstView)

        firstView.snp.makeConstraints {
            $0.left.equalToSuperview().offset(16)
            $0.right.equalToSuperview().offset(-16)
            $0.top.equalTo(view.snp.topMargin).offset(16)
            $0.bottom.equalTo(view.snp.bottomMargin).offset(-16)
        }
        
        firstView.addSubview(secondView)
        
        secondView.snp.makeConstraints() {
            $0.center.equalToSuperview()
            $0.size.equalTo(CGSize(width: 100, height: 100))
        }
        
        firstView.addSubview(textLabel)
        
        textLabel.snp.makeConstraints() {
            $0.bottom.equalTo(secondView.snp.top).offset(-16)
            $0.left.equalToSuperview().offset(16)
            $0.right.equalToSuperview().offset(-16)
            $0.top.equalToSuperview().offset(16)
        }
    }
}
