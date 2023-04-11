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
    
    private let chartView = ChartView()
    
    func configure(with data: [WAChartsView.Data], topChartOffset: Int = 10) {
        xAxisView.configure(with: data)
        yAxisView.configure(with: data)
        chartView.configure(with: data, topChartOffset: topChartOffset)
        
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
            
            xAxisView.leadingAnchor.constraint(equalTo: yAxisView.trailingAnchor, constant: 8),
            xAxisView.bottomAnchor.constraint(equalTo: bottomAnchor),
            xAxisView.trailingAnchor.constraint(equalTo: trailingAnchor , constant: 4),
            
            chartView.leadingAnchor.constraint(equalTo: yAxisView.trailingAnchor, constant: 17),
            chartView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            chartView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            chartView.bottomAnchor.constraint(equalTo: xAxisView.topAnchor, constant: -17),
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .clear
        
    }
}
