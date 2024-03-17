//
//  CalculationListViewController.swift
//  TinkoffCalculator
//
//  Created by Глеб Москалев on 17.03.2024.
//

import UIKit

class CalculationListViewController:
    UIViewController{
    
    @IBOutlet weak var calcualtionLabel: UILabel!
    
    var result: String?
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        initialize()
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    required init?(coder: NSCoder){
        super.init(coder: coder)
        initialize()
    }
    
    private func initialize(){
        modalPresentationStyle = .fullScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calcualtionLabel.text = result
    }
    @IBAction func dismisVC(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
