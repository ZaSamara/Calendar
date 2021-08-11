//
//  ViewController.swift
//  Calendar
//
//  Created by Samara Zarylbekova on 11.08.2021.
//

import FSCalendar
import UIKit

class ViewController: UIViewController, FSCalendarDelegate {
    
    var calendar = FSCalendar()

    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        calendar.frame = CGRect(x: 0,
                                y: 50,
                                width: view.frame.size.width,
                                height: view.frame.size.width)
        view.addSubview(calendar)
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE MM-dd-YYYY"
        let string = formatter.string(from: date)
        print("\(string)")
    }


}

