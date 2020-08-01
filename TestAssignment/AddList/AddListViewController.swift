//
//  AddListViewController.swift
//  TestAssignment
//
//  Created by preeti dhankar on 01/08/20.
//  Copyright © 2020 Viks. All rights reserved.
//

import UIKit
import DropDown
import Foundation

class AddListViewController: UIViewController,WWCalendarTimeSelectorProtocol {

    
    @IBOutlet weak var AddListTableView: UITableView!
    
    var dateButton = UIButton()
    var dateString = String()
       var itamTitle = String()
    var Location = UITextField()
    var LocationStr = String()
    var singleDate: Date = Date()
    var multipleDates: [Date] = []
    
    
      var arrVehical = ["Meeting","Training","Presentation","Other"]
      let categoryDrop = DropDown()
      lazy var dropDowns: [DropDown] = {
          return [
              self.categoryDrop
          ]
      }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerXib()
    }
    
    private func registerXib() {
        self.AddListTableView.registerCell(nibName: FilterNavigationTableViewCell.reusableIdentifier)
    }
}

extension AddListViewController : UITableViewDelegate,UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            guard let cell = self.AddListTableView.dequeueReusableCell(withIdentifier: FilterNavigationTableViewCell.reusableIdentifier) as? FilterNavigationTableViewCell else {
                fatalError("CarouselViewForHeaderTableViewCell not found")
            }
        
        self.LocationStr =  cell.enterLoactionTxt.text ?? ""
     self.forHeaderViewCell(cell, indexpath: IndexPath.init(row: 0, section: 0))
      cell.bgView.viewWithShadow()
        return cell
    }

}
