//
//  Cell.swift
//  UITableViewCellAnimation
//
//  Created by Kamil Burczyk on 07.04.2017.
//  Copyright © 2017 Kamil Burczyk. All rights reserved.
//

import UIKit

protocol CellDelegate: class {
    func contentDidChange(cell: Cell)
}

class Cell: UITableViewCell {
    let shortText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    let longText = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
    
    @IBOutlet var labelDescription: UILabel!
    @IBOutlet var labelTerms: UILabel!
    
    weak var delegate: CellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        labelDescription.text = shortText
    }
    
    @IBAction func buttonMoreTouched(_ sender: UIButton) {
        labelDescription.text = longText
        delegate?.contentDidChange(cell: self)
    }
    
    @IBAction func buttonLessTouched(_ sender: UIButton) {
        labelDescription.text = shortText
        delegate?.contentDidChange(cell: self)
    }
}
