//
//  MainHeroHeaderView.swift
//  NetflixClone-MVVM
//
//  Created by Alper Canımoğlu on 18.01.2024.
//

import UIKit

class MainHeroHeaderView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        createUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createUI() {
        lazy var heroImageView = UIImageView()
        heroImageView.image = UIImage(named: "spiderman2")
        addSubview(heroImageView)
        heroImageView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide)
            make.right.left.equalToSuperview()
            make.height.equalTo(screenHeight * 0.35)
        }
        
        lazy var playButton = UIButton()
        playButton.setImage(UIImage(systemName: "play.square.fill"), for: .normal)
        playButton.tintColor = UIColor.white
        addSubview(playButton)
        playButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(0.30 * screenHeight)
            make.left.equalToSuperview()
            make.width.equalTo(50)
        }
        
        lazy var downloadButton = UIButton()
        downloadButton.setImage(UIImage(systemName: "arrow.down.square.fill"), for: .normal)
        downloadButton.tintColor = UIColor.white
        addSubview(downloadButton)
        downloadButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(0.30 * screenHeight)
            make.right.equalToSuperview()
            make.width.equalTo(50)
        }
        
        UIView.animate(withDuration: 0.5) {
            playButton.transform = CGAffineTransform(scaleX: 1.9, y: 1.9)
            downloadButton.transform = CGAffineTransform(scaleX: 1.9, y: 1.9)
        }
    }
    
    private func addGradient() {
        
    }
}
