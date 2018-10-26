//
//  ViewController.swift
//  FinalGradeCalculator
//
//  Created by Jacob Smith on 10/25/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yourGrade: UITextField!
    @IBOutlet weak var gradeWanted: UITextField!
    @IBOutlet weak var finalExamSize: UITextField!
    @IBOutlet weak var examGradeNeededLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func calculateGrade() -> Int {
        if let gradeWantedInt:Int = Int(gradeWanted.text!)! {
            let yourGradeDouble:Double = Double(yourGrade.text!)!
            let finalExamSizeInt:Int = Int(finalExamSize.text!)!
            
            var examGradePart:Double = Double(100 - finalExamSizeInt)
            let finalExamSizeDouble = Double(finalExamSizeInt) / 100
            examGradePart = examGradePart / 100
            let examGradePartDone = examGradePart * Double(yourGradeDouble)
            let mainGradePart:Double = finalExamSizeDouble * Double(gradeWantedInt)
            let examGradeNeededFull:Double = Double(mainGradePart) + examGradePartDone
            examGradeNeededLabel.text = String(examGradeNeededFull)
            print("gradeWantedInt: " + String(gradeWantedInt))
            print("finalExamSizeInt: " + String(finalExamSizeInt))
            print("mainGradePart: " + String(mainGradePart))
            print("examGradePart: " + String(examGradePart))
            print("examGradePartDone: " + String(examGradePartDone))
            return Int(examGradeNeededFull)
            
            
        }
        
    }

    @IBAction func onCalculatePressed(_ sender: UIButton) {
        calculateGrade()
    }
    

}

