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

/*
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



var mainView: TableView { return self.view as! TableView }
override func loadView() {
    self.view = TableView(frame: UIScreen.main.bounds)
}

*/

/*
class TableView: UIView {
    override init(frame: CGRect){
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder){
        fatalError("Ded")
    }
    func setupView() {
        
    }
    
    let  contentView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.layer.borderWidth = 1.0
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
    }()
}
*/
}
