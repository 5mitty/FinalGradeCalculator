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
            var yourGradeDouble:Double = Double(yourGrade.text!)!
            let finalExamSizeInt:Int = Int(finalExamSize.text!)!
            
            var examGradePart:Double = Double(100 - finalExamSizeInt)
            examGradePart = examGradePart / 100
            
            let finalExamSizeDouble = Double(finalExamSizeInt) / 100
            yourGradeDouble = yourGradeDouble / 100
            
            var gradeWantedDouble:Double =  Double(gradeWantedInt)
            gradeWantedDouble = gradeWantedDouble / 100
            
            // new try starts here
            
            let wantedGradeMinusExamGradePart = examGradePart * yourGradeDouble
            
            let wantedGradeMinusExamTimesCurrent = gradeWantedDouble - wantedGradeMinusExamGradePart
            
            var wantGradeMinusExamTimesCurrentDivideExamWeight = wantedGradeMinusExamTimesCurrent / finalExamSizeDouble
            
            wantGradeMinusExamTimesCurrentDivideExamWeight = wantGradeMinusExamTimesCurrentDivideExamWeight * 100
            
            // new try ends here
            
            
            //let examGradePartDone = examGradePart * Double(yourGradeDouble)
            
            
            
            //let mainGradePart:Double = finalExamSizeDouble * Double(gradeWantedInt)
            
            //let examGradeNeededFull:Double = Double(mainGradePart) + examGradePartDone
            
            //let examGradePartDone:Double = Double(mainGradePart) + Double(.8 * gradeWantedInt)
            
            //examGradeNeededLabel.text = String(examGradeNeededFull)
            
            var wantGradeMinusExamTimesCurrentDivideExamWeightInt = Int(wantGradeMinusExamTimesCurrentDivideExamWeight)
            
            let wantGradeMinusExamTimesCurrentDivideExamWeightIntString = String(wantGradeMinusExamTimesCurrentDivideExamWeightInt)
            
            examGradeNeededLabel.text = (wantGradeMinusExamTimesCurrentDivideExamWeightIntString + "%")
            
            
            print("gradeWantedGradeDouble: " + String(gradeWantedDouble))
            print("examGradePart: " + String(examGradePart))
            print("yourGradeDouble: " + String(yourGradeDouble))
            print("finalExamSizeDouble: " + String(finalExamSizeDouble))
            return Int(wantGradeMinusExamTimesCurrentDivideExamWeight)
            
            
        }
        
    }

    @IBAction func onCalculatePressed(_ sender: UIButton) {
        calculateGrade()
    }
    

}

