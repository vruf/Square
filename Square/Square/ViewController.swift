//
//  ViewController.swift
//  Square
//
//  Created by Vadim Rufov on 3.9.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let square: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        let gradient = CAGradientLayer()

        gradient.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        gradient.endPoint = CGPoint(x: 0.8, y: 0.5)
        gradient.frame = view.bounds
        gradient.cornerRadius = 8 // Will work only if parent is empty

        view.layer.addSublayer(gradient)
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize.init(width: 0, height: 5)
        view.layer.shadowOpacity = 0.3
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        view.addSubview(square)

        square.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            square.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            square.centerYAnchor.constraint(equalTo: view.centerYAnchor),

            square.widthAnchor.constraint(equalToConstant: square.frame.width),
            square.heightAnchor.constraint(equalToConstant: square.frame.height),
        ])
    }

}
