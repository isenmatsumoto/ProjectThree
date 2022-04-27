//
//  secondViewController.swift
//  ProjectThree
//
//  Created by Isen Matsumoto on 4/25/22.
//

import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var yourTip: UILabel!
    
    @IBOutlet weak var yourTotal: UILabel!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var percentageLabel: UILabel!
    
    
   
    var restaurantList = ["Nagoya Ramen & Bakery", "Taqueria El Ranchero", "Jolibee", "Tanaka Ramen & Izakaya", "Olive Garden"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return restaurantList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = restaurantList[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Tip Calculator"
        
        self.yourTip.text = "Your Tip"
        
        self.yourTotal.text = "Your Total is:"
        
        

        // Do any additional setup after loading the view.
        tipLabel.text = ""
        totalLabel.text = ""
        percentageLabel.text = ""
        
        segmentedControl.selectedSegmentIndex = -1
        
    }
    
    @IBAction func segmentedControlPressed(_ sender: Any) {
    
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            let tipNumber = Float(textField.text!)!
                    let answer = (tipNumber * 15)/100
                    tipLabel.text = "\(answer)"
            
            totalLabel.text = "\(answer + tipNumber)"
            percentageLabel.text = "(15%):"
            
        case 1:
            let tipNumber = Float(textField.text!)!
                    let answer = (tipNumber * 18)/100
                    tipLabel.text = "\(answer)"
            
            totalLabel.text = "\(answer + tipNumber)"
            percentageLabel.text = "(18%):"
        case 2:
            let tipNumber = Float(textField.text!)!
                    let answer = (tipNumber * 20)/100
                    tipLabel.text = "\(answer)"
            
            totalLabel.text = "\(answer + tipNumber)"
            percentageLabel.text = "(20%):"
        default:
            break
        }
    
    
    
    
    }
    
    
}
