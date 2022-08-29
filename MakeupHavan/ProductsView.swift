//
//  ProductsView.swift
//  MakeupHavan
//
//  Created by Gabriel de Sousa Barbosa on 25/08/22.
//

import Foundation
import UIKit



class ProductsView: UIView{
    
    var title: String = ""
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.backgroundColor = .red
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
