//
//  MainWeatherHeaderView.swift
//  WeatherForecast
//
//  Created by Kim Do hyung on 2021/10/11.
//

import UIKit

class MainWeatherHeaderView: UIView {
    private let weatherIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .leading
        
        return stackView
    }()
    private let temperatureStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        
        return stackView
    }()
    private let addressLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .callout)
        
        return label
    }()
    private let lowestTemperatureLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .callout)
        
        return label
    }()
    private let highestTemperatureLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .callout)
        
        return label
    }()
    private let currentTamperatureLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setUpUI() {
        addSubview(weatherIconImageView)
        addSubview(stackView)
        
        let margin = CGFloat(10)
        temperatureStackView.addArrangedSubview(lowestTemperatureLabel)
        temperatureStackView.addArrangedSubview(highestTemperatureLabel)
        stackView.addArrangedSubview(addressLabel)
        stackView.addArrangedSubview(temperatureStackView)
        stackView.addArrangedSubview(currentTamperatureLabel)
        
        weatherIconImageView.topAnchor.constraint(equalTo: topAnchor, constant: margin).isActive = true
        weatherIconImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: margin).isActive = true
        weatherIconImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -margin).isActive = true
        
        stackView.leadingAnchor.constraint(equalTo: weatherIconImageView.trailingAnchor, constant: margin).isActive = true
        stackView.topAnchor.constraint(equalTo: topAnchor, constant: margin).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -margin).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
}
