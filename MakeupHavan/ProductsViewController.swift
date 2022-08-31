//
//  ProductsView.swift
//  MakeupHavan
//
//  Created by Gabriel de Sousa Barbosa on 25/08/22.
//

import Foundation
import UIKit

class ProductsViewController: UIViewController {
    lazy var mainView = ProductsView() // Retirar isso na hora de organizar o codigo
    
    private let data: [Feature] = [
           Feature.init(marca: "Marca" , preço: "Preco", classificação: "Classificacao", categoria: "Categoria", tipoDeProduto: "Tipo de Produto", descricao: "Produto do tipo e marca"),
           Feature.init(marca: "Marca2" , preço: "Preco", classificação: "Classificacao", categoria: "Categoria", tipoDeProduto: "Tipo de Produto", descricao: "Produto do tipo e marca"),
           Feature.init(marca: "Marca3" , preço: "Preco", classificação: "Classificacao", categoria: "Categoria", tipoDeProduto: "Tipo de Produto", descricao: "Produto do tipo e marca"),
           Feature.init(marca: "Marca4" , preço: "Preco", classificação: "Classificacao", categoria: "Categoria", tipoDeProduto: "Tipo de Produto", descricao: "Produto do tipo e marca"),
           Feature.init(marca: "Marca5" , preço: "Preco", classificação: "Classificacao", categoria: "Categoria", tipoDeProduto: "Tipo de Produto", descricao: "Produto do tipo e marca"),
           Feature.init(marca: "Marca6" , preço: "Preco", classificação: "Classificacao", categoria: "Categoria", tipoDeProduto: "Tipo de Produto", descricao: "Produto do tipo e marca"),
           Feature.init(marca: "Marca7" , preço: "Preco", classificação: "Classificacao", categoria: "Categoria", tipoDeProduto: "Tipo de Produto", descricao: "Produto do tipo e marca"),
           Feature.init(marca: "Marca8" , preço: "Preco", classificação: "Classificacao", categoria: "Categoria", tipoDeProduto: "Tipo de Produto", descricao: "Produto do tipo e marca"),
           Feature.init(marca: "Marca9" , preço: "Preco", classificação: "Classificacao", categoria: "Categoria", tipoDeProduto: "Tipo de Produto", descricao: "Produto do tipo e marca"),
           Feature.init(marca: "Marca10" , preço: "Preco", classificação: "Classificacao", categoria: "Categoria", tipoDeProduto: "Tipo de Produto", descricao: "Produto do tipo e marca")
    ]
    
    // MARK: TableView:
    var tableView = UITableView()
    
    override func loadView() {
        super.loadView()
        self.view = mainView
        configurateTableView()
        navigationItem.title = "Products"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.backgroundColor = .systemBackground
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func configurateTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 130
        tableView.pin(to: view)
    }
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}
extension ProductsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = data[indexPath.row]
        let vc = FeaturesViewController(item: item)
        navigationController?.pushViewController(vc, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        cell.descriptionLabel.text = data[indexPath.row].descricao
        cell.labelBrand.text = data[indexPath.row].marca
        cell.valueLabel.text = data[indexPath.row].preço
        
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        UIView.animate(withDuration: 0.75) {
            cell.alpha = 1.0
        }
    }
}
