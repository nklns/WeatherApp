//
//  ViewController.swift
//  WeatherApp
//
//  Created by Станислав Никулин on 10.10.2024.
//

import UIKit
import SnapKit


class MainView: UIView {
    // MARK: - UI Elements
    private let picker = UIPickerView()
    
    private let maxTemperatureLabel = UILabel()
    
    private let minTemperatureLabel = UILabel()
    
    private let degreesSymbol = UIImage(named: "degreesign.celsius")
    private let mainTemperatureLabel = UILabel()
    
    private let stripView = UIView()
    
    private let desсriptionLabel = UILabel()
    
    private let windSymbol = UIImage(named: "wind")
    private let windLabel = UILabel()
    private let windValueLabel = UILabel()
    
    private let humiditySymbol = UIImage(named: "humidity")
    private let humidityLabel = UILabel()
    private let humidityValueLabel = UILabel()
    
    private let backgroundImageView = UIImageView(image: UIImage(named: "backgroundNoise"))

    // MARK: - Life Cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupAppearance()
        setupLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Main Private Methods

private extension MainView {
    func setupViews() {
        addSubviews(backgroundImageView, picker, maxTemperatureLabel)
    }
    
    func setupAppearance() {
        self.backgroundColor = .white
        
        temperatureLabelsSetup()
    }
    
    func setupLayout() {
        backgroundImageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        picker.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.horizontalEdges.equalToSuperview().inset(10)
        }
        
        maxTemperatureLabel.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(10)
            $0.centerY.equalToSuperview()
        }
    }
}

// MARK: - Other Private Methods
private extension MainView {
    func temperatureLabelsSetup() {
        
    }
}
