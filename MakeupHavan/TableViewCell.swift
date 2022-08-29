//
//  TableViewCell.swift
//  MakeupHavan
//
//  Created by Gabriel de Sousa Barbosa on 26/08/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    //MARK: Labels:
    lazy var labelBrand: UILabel = {
        let labelBrand = UILabel()
        labelBrand.translatesAutoresizingMaskIntoConstraints = false
        labelBrand.text = "Marca"
        return labelBrand
    }()
    lazy var descriptionLabel: UILabel = {
        let descriptionLabel = UILabel()
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.text = "Descrição"
        return descriptionLabel
    }()
    lazy var valueLabel: UILabel = {
        let valueLabel = UILabel()
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        valueLabel.text = "Valor"
        return valueLabel
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
        addSubview(descriptionLabel)
        addSubview(valueLabel)
    }
    
    func configurationsLabels() {
        constrainstsConfiguration()
        constrainstsConfigurationn() // Se funcionar mudar o nome desta funcao
        constrainstsConfig()
    }
    
    private func constrainstsConfiguration() {
        addSubview(labelBrand)
        NSLayoutConstraint.activate([
            labelBrand.topAnchor.constraint(equalTo: self.topAnchor,constant: 10),
            labelBrand.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 9),
            labelBrand.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12)
        ])
    }
    private func constrainstsConfigurationn() {
        addSubview(descriptionLabel)
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: labelBrand.topAnchor, constant: 45),
            descriptionLabel.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 9),
            descriptionLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 20),
        ])
    }
    
    private func constrainstsConfig() {
        addSubview(valueLabel)
        NSLayoutConstraint.activate([
            valueLabel.bottomAnchor.constraint(equalTo: descriptionLabel.bottomAnchor,constant: 40),
            valueLabel.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 9),
            valueLabel.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -12)
        ])
    }
}


