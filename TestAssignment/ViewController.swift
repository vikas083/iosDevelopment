//
//  ViewController.swift
//  TestAssignment
//
//  Created by preeti dhankar on 01/08/20.
//  Copyright © 2020 Viks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainTableView: UITableView!
    
   // var data = Array<AnyObject>()
     var data = Dictionary<String, String>()
    override func viewDidLoad() {
        super.viewDidLoad()
        registerXib()
        debugPrint(data)
        
    }

    
     func registerXib() {
         self.mainTableView.registerCell(nibName: AddTableViewCell.reusableIdentifier)
     }
    
    
    @IBAction func addBtnAction(_ sender: Any) {
        
        let storyBord : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextViewController = storyBord.instantiateViewController(withIdentifier: "AddListViewController") as! AddListViewController
        self.navigationController?.pushViewController(nextViewController, animated: true)
        
    }
     

}


extension ViewController : UITableViewDelegate,UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            guard let cell = self.mainTableView.dequeueReusableCell(withIdentifier: AddTableViewCell.reusableIdentifier) as? AddTableViewCell else {
                fatalError("CarouselViewForHeaderTableViewCell not found")
            }
        
        
        //   let title = data[indexPath.row]
        
        

      cell.bgView.viewWithShadow()
        return cell
    }

}
