//
//  FeaturesViewController.swift
//  MakeupHavan
//
//  Created by Gabriel de Sousa Barbosa on 27/08/22.
//

import UIKit

class FeaturesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: TableViewFeature
    let tableFeatures: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self,forCellReuseIdentifier: "cell")
        return table
    }()
    
    //MARK: Init
    private var item: Feature
    
    init(item: Feature) {
        self.item = item
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableFeatures)
        view.backgroundColor = .systemBackground
        navigationItem.title = "Features"
        navigationController?.navigationBar.prefersLargeTitles = true
        tableFeatures.delegate = self
        tableFeatures.dataSource = self
        
        tableFeatures.register(FeatureTableViewCell.self, forCellReuseIdentifier: "FeatureCell")
        tableFeatures.register(ButtonFavoriteTableViewCell.self, forCellReuseIdentifier: "Cel")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tableFeatures.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableFeatures.dequeueReusableCell(withIdentifier: "FeatureCell", for: indexPath) as! FeatureTableViewCell
        cell.labelBrand.text = item.marca
        cell.productTypeLabel.text = item.tipoDeProduto
        cell.categoryLabel.text = item.categoria
        cell.classificationLabel.text = item.classificação
        cell.valueLabel.text = item.preço
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableFeatures.deselectRow(at: indexPath, animated: true)
        print(item)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
        
    }
    
}
