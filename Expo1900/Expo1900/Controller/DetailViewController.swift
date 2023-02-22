//
//  DetailViewController.swift
//  Expo1900
//
//  Created by Harry on 2023/02/22.
//

import UIKit

final class DetailViewController: UIViewController {

    private let exhibitionItem: ExhibitionItem
    private let scrollView = CustomScrollView()
    
    init(exhibitionItem: ExhibitionItem) {
        self.exhibitionItem = exhibitionItem
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = self.exhibitionItem.name
        configureScrollView()
        configureImageView()
    }
    
    func configureImageView() {
        let imageView = UIImageView(image: self.exhibitionItem.image)
        
        self.scrollView.addArrangeSubView(view: imageView)
    }
    
    private func configureScrollView() {
        self.view.addSubview(self.scrollView)
        
        NSLayoutConstraint.activate([
            self.scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }
}
