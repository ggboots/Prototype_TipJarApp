//
//  FirstChildVC.swift
//  tipJarWalletApp
//
//  Created by George Boots on 27/7/20.
//  Copyright © 2020 George Boots. All rights reserved.
//

import UIKit
import Charts

class FirstChildVC: UIViewController, ChartViewDelegate{
    
    var barChart = BarChartView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barChart.delegate = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        barChart.frame = CGRect(x: 0, y: 0,
                                width: self.view.frame.size.width,
                                height: self.view.frame.size.height)
        barChart.center = view.center
        view.addSubview(barChart)
        
        var entries = [BarChartDataEntry]()
        
        for x in 0..<10{
            entries.append(BarChartDataEntry(x: Double(x),
                                             y: Double(x)))
        }
        
        let set = BarChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.joyful()
        let data = BarChartData(dataSet: set)
        
        barChart.data = data
    }
    
}
