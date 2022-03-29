//
//  CustomTableViewCell.swift
//  MVVM
//
//  Created by Pablo De La Cruz on 3/29/22.
//
//Step 4, create this file with xib and make these concetions and functions.
import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var myLabel : UILabel!
    static let cellIdentifer = "CustomTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static func nib() -> UINib{
        return UINib(nibName: "CustomTableViewCell", bundle: nil)
        
    }
    
    public func configure(with viewModel: CellViewModel){
        myLabel.text = "\(viewModel.firstName) , \(viewModel.lastName)"
        
    }
    
}

//Step 5 Benefits : https://www.sagitec.com/blog/the-5ws-of-mvvm
