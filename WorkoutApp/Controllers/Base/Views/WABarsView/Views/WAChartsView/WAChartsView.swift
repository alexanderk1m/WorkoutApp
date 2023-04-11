//
//  WAChartsView.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 11.04.2023.
//

import UIKit

extension WAChartsView {
    struct Data {
        let value: Int
        let title: String
    }
}

final class WAChartsView: WABaseView {
    
    private let yAxisView = YAxisView()
    private let xAxisView = XAxisView()
    
    private let chartView = UIView() //WAChartView()
    
    func configure(with data: [WAChartsView.Data]) {
        xAxisView.configure(with: data)
        yAxisView.configure(with: data)
        
    }
    
    
}


extension WAChartsView {
    override func setupViews() {
        super.setupViews()
        
        setupView(xAxisView)
        setupView(yAxisView)
        setupView(chartView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            yAxisView.leadingAnchor.constraint(equalTo: leadingAnchor),
            yAxisView.topAnchor.constraint(equalTo: topAnchor),
            yAxisView.bottomAnchor.constraint(equalTo: xAxisView.topAnchor, constant: -12),
            
            xAxisView.leadingAnchor.constraint(equalTo: yAxisView.trailingAnchor),
            xAxisView.bottomAnchor.constraint(equalTo: bottomAnchor),
            xAxisView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            chartView.topAnchor.constraint(equalTo: topAnchor),
            chartView.trailingAnchor.constraint(equalTo: trailingAnchor),
            chartView.bottomAnchor.constraint(equalTo: xAxisView.topAnchor, constant: -12),
            chartView.leadingAnchor.constraint(equalTo: yAxisView.trailingAnchor, constant: 12),
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .clear
        chartView.backgroundColor = .systemYellow
    }
}
