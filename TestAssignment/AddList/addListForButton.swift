//
//  addListForButton.swift
//  TestAssignment
//
//  Created by preeti dhankar on 01/08/20.
//  Copyright © 2020 Viks. All rights reserved.
//

import Foundation
import UIKit
import DropDown


extension AddListViewController {
  
 func forHeaderViewCell(_ cell: FilterNavigationTableViewCell, indexpath: IndexPath) {
    
    cell.SelectdateBtn.addTarget(self, action: #selector(datebtnAction(sender:)), for: .touchUpInside)
    cell.SelectdateBtn.tag = indexpath.row

    cell.selectitamBtn.addTarget(self, action: #selector(selectitamBtnAction(sender:)), for: .touchUpInside)
    cell.selectitamBtn.tag = indexpath.row
    self.dateButton = cell.SelectdateBtn
    
    
    cell.applyfilterBtn.addTarget(self, action: #selector(applyfilterBtnAction(sender:)), for: .touchUpInside)
       cell.applyfilterBtn.tag = indexpath.row
    
    
}
    
////////////////////////Button Action   Header Cell //////////////////////////////////////////
    
    @objc func applyfilterBtnAction (sender : UIButton) {
        
//        var dict = Dictionary<String, Array<String>>()
////       // print("\(dict)")
//        dict["Aarry"] = [dateString,itamTitle,LocationStr]
//        if var arr = dict["Aarry"] {
//            arr.append(dateString)
//        }
////
//        var myDictionary:[String:String] = [:]
//
//         if var arr = myDictionary["Aarry"] {
//             arr.append(dateString)
//         }
//
//        for (key, value) in myDictionary {
//            print("\(key) : \(value)")
//        }
//
//         print("\(myDictionary)")
        
        
        var dict = Dictionary<String, String>()

        dict["A"] = String()
        dict["B"] = String()
       // dict["C"] = [301]

        if var arr = dict["A"] {
            arr.append(dateString)
            dict["A"] = arr
        }
        
        if var arr = dict["B"] {
               arr.append(itamTitle)
               dict["B"] = arr
           }

        print("\(dict)")
       
        

        
let storyBord : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
     let nextViewController = storyBord.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        nextViewController.data  = dict
     self.navigationController?.pushViewController(nextViewController, animated: true)
//
    }
            
    @objc func selectitamBtnAction (sender : UIButton) {
        let buttonTag = sender.tag
             let indexPath = IndexPath.init(item: buttonTag, section: 0)
        if (AddListTableView.cellForRow(at: indexPath) as? FilterNavigationTableViewCell) != nil {
            
                self.categoryDrop.anchorView = sender
                self.categoryDrop.bottomOffset = CGPoint(x: 0, y: sender.bounds.height)
                self.categoryDrop.dataSource.removeAll()
                self.categoryDrop.dataSource.append(contentsOf: self.arrVehical)
                self.categoryDrop.selectionAction = { [unowned self] (index, item) in
                    sender.setTitle(item, for: .normal)
                     self.itamTitle = item
                    debugPrint(self.itamTitle)
                    
                }
                self.categoryDrop.show()

        }
        
    }
    
    @objc func datebtnAction (sender : UIButton) {
        
        let buttonTag = sender.tag
         let indexPath = IndexPath.init(item: buttonTag, section: 0)
        if (AddListTableView.cellForRow(at: indexPath) as? FilterNavigationTableViewCell) != nil {
            
    let selector = UIStoryboard(name: "WWCalendarTimeSelector", bundle: nil).instantiateInitialViewController() as! WWCalendarTimeSelector
     selector.delegate = self
     selector.optionCurrentDate = singleDate
     selector.optionCurrentDates = Set(multipleDates)
     selector.optionCurrentDateRange.setStartDate(multipleDates.first ?? singleDate)
     selector.optionCurrentDateRange.setEndDate(multipleDates.last ?? singleDate)
     selector.optionStyles.showDateMonth(true)
     selector.optionStyles.showMonth(false)
     selector.optionStyles.showYear(true)
     selector.optionStyles.showTime(false)
     present(selector, animated: true, completion: nil)

         }
     }
    
    func WWCalendarTimeSelectorDone(_ selector: WWCalendarTimeSelector, date: Date) {

               let dateString = date.stringFromFormat("dd MMMM yyyy'")
             self.dateString = "\(dateString)"
              self.dateButton.setTitle("\(dateString)", for: .normal)
         
       }
    
    
}

