//
//  ViewController.swift
//  PHBApplying
//
//  Created by phlippieb on 08/09/2019.
//  Copyright (c) 2019 phlippieb. All rights reserved.
//

import UIKit
import PHBApplying

class ViewController: UIViewController {
    // Provide a view as the root view for this controller.
    // Configure the stack view using `applying`.
    override func loadView() {
        self.view = UIView().applying { rootView in
            
            rootView.backgroundColor = .white
            
            // Add the button to the stack view.
            self.stackView.addArrangedSubview(self.button)
            
            // Install the stack view in the layout.
            rootView.addSubview(self.stackView)
            self.stackView.translatesAutoresizingMaskIntoConstraints = false
            self.stackView.topAnchor.constraint(equalTo: rootView.topAnchor).isActive = true
            self.stackView.leftAnchor.constraint(equalTo: rootView.leftAnchor).isActive = true
            self.stackView.rightAnchor.constraint(equalTo: rootView.rightAnchor).isActive = true
            self.stackView.bottomAnchor.constraint(equalTo: rootView.bottomAnchor).isActive = true
        }
    }
    
    /// A stack view to contain all the content;
    /// set up using `applying`
    private lazy var stackView = UIStackView().applying { stackView in
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .center
    }
    
    /// A button that adds content to the stack view;
    /// set up using `applying` with anonymous closure arguments.
    // Applies can be chained.
    private lazy var button = UIButton()
        .applying { $0.setTitle("Tap me", for: .normal) }
        .applying { $0.setTitleColor(.blue, for: .normal) }
        .applying { $0.addTarget(self, action: #selector(onButton), for: .touchUpInside) }
    
    // Button target
    
    @objc private func onButton() {
        let newLabel = UILabel()
            .applying { $0.text = "Added: \(Date())" }
        
        UIView.animate(withDuration: 0.3) {
            self.stackView.addArrangedSubview(newLabel)
        }
    }
}
