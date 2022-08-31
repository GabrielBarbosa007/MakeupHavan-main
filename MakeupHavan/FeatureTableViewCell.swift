//
//  FeatureTableViewCell.swift
//  MakeupHavan
//
//  Created by Gabriel de Sousa Barbosa on 29/08/22.
//

import UIKit

class FeatureTableViewCell: UITableViewCell {
    
    //MARK: Labels:
    lazy var labelBrand: UILabel = {
        let labelBrand = UILabel()
        labelBrand.translatesAutoresizingMaskIntoConstraints = false
        labelBrand.text = "Marca"
        return labelBrand
    }()
    lazy var valueLabel: UILabel = {
        let valueLabel = UILabel()
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        valueLabel.text = "Preco"
        return valueLabel
    }()
    lazy var classificationLabel : UILabel = {
        let classificationLabel = UILabel()
        classificationLabel.translatesAutoresizingMaskIntoConstraints = false
        classificationLabel.text = "Classificacao"
        return classificationLabel
    }()
    lazy var categoryLabel : UILabel = {
        let categoryLabel = UILabel()
        categoryLabel.translatesAutoresizingMaskIntoConstraints = false
        categoryLabel.text = "Categoria"
        return categoryLabel
    }()
    lazy var productTypeLabel: UILabel = {
        let productTypeLabel = UILabel()
        productTypeLabel.translatesAutoresizingMaskIntoConstraints = false
        productTypeLabel.text = "Tipo de Produtos"
        return productTypeLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configurationAddSubViews()
        configurationsLabels()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configurationAddSubViews() {
        addSubview(labelBrand)
        addSubview(valueLabel)
        addSubview(classificationLabel)
        addSubview(categoryLabel)
        addSubview(productTypeLabel)
    }
    func configurationsLabels() {
        constrainsts()
    }
    
    private func constrainsts() {
        NSLayoutConstraint.activate([
            
            labelBrand.topAnchor.constraint(equalTo: self.topAnchor,constant: 10),
            labelBrand.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 9),
            labelBrand.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
            
            valueLabel.topAnchor.constraint(equalTo: labelBrand.topAnchor, constant: 45),
            valueLabel.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 9),
            valueLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 20),
            
            classificationLabel.bottomAnchor.constraint(equalTo: valueLabel.bottomAnchor,constant: 40),
            classificationLabel.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 9),
            classificationLabel.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -12),
            
            categoryLabel.bottomAnchor.constraint(equalTo: classificationLabel.bottomAnchor,constant: 40),
            categoryLabel.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 9),
            categoryLabel.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -12),
            
            productTypeLabel.bottomAnchor.constraint(equalTo: categoryLabel.bottomAnchor,constant: 40),
            productTypeLabel.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 9),
            productTypeLabel.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -12),
        ])
    }
}

