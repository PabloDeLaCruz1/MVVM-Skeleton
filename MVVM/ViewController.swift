//
//  ViewController.swift
//  MVVM
//
//  Created by Pablo De La Cruz on 3/29/22.

//MVVM Is useful for complex applications
//Step 1. In this example, we can see here a tableView that only needs two pieces of data from the model, firstName, and lastName

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet var tableView: UITableView!
    var data = [
        Person(firstName: "Dan", lastName: "Smith", gender: "Make", age: 45, height: 144),
        Person(firstName: "Jan", lastName: "Smith", gender: "Make", age: 45, height: 144),
        Person(firstName: "Bann", lastName: "Smith", gender: "Make", age: 45, height: 144)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.cellIdentifer)
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.cellIdentifer, for: indexPath) as! CustomTableViewCell

        
        //Step2 Explain the MVC parts : Controller
        //cell.textLabel?.text = data[indexPath.row].firstName
        //cell.textLabel?.text = data[indexPath.row].lastName
        
        //for step 3
        let model = data[indexPath.row]
        let viewModel = CellViewModel(firstName: model.firstName, lastName: model.lastName)
        
        //for step 3 before creating customCell
        //cell.textLabel?.text = "\(viewModel.firstName), \(viewModel.lastName)"

        //Step 4
        cell.configure(with: viewModel)

        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }



}
//Step 2. Explain the MVC parts : Model
struct Person {
    let firstName: String
    let lastName: String
    let gender: String
    let age: Int
    let height: Double

}


//Step 3 Explain ViewModel that makes this MVVM
//This behaves as a subject of some of the data in the model
struct CellViewModel {
    let firstName: String
    let lastName: String

}

//Step 4 Explain Value
//1. Data is now coming from the viewModel
//2. If the underlying model changes, and we want to tell the viewModel "something change, update your view", we can avoid doing that if something changes thats not in the viewModel that the user isnt seing.
//3.For example, if height changes (user updates hieght), in our case, we arent showing the height, so no need to tell the viewModel that the users height has changed, because the cell doesnt havent. 
