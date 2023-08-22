//
//  ViewController.swift
//  NeonAcademyAlertController
//
//  Created by Kerem Caan on 1.08.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController{
    
    let button1: UIButton = UIButton()
    let button2: UIButton = UIButton()
    let button3: UIButton = UIButton()
    let button4: UIButton = UIButton()
    let button5: UIButton = UIButton()
    let button6: UIButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    func configureUI() {
        
        view.addSubview(button1)
        button1.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button1.setTitle("buton1", for: .normal)
        button1.setTitleColor(.black, for: .normal)
        button1.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(100)
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
            
        view.addSubview(button2)
        button2.setTitle("buton2", for: .normal)
        button2.addTarget(self, action: #selector(button2Tapped), for: .touchUpInside)
        button2.setTitleColor(.black, for: .normal)
        button2.snp.makeConstraints { make in
            make.top.equalTo(button1.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
        view.addSubview(button3)
        button3.setTitle("buton3", for: .normal)
        button3.addTarget(self, action: #selector(button3Tapped), for: .touchUpInside)
        button3.setTitleColor(.black, for: .normal)
        button3.snp.makeConstraints { make in
            make.top.equalTo(button2.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
        view.addSubview(button4)
        button4.setTitle("buton4", for: .normal)
        button4.addTarget(self, action: #selector(button4Tapped), for: .touchUpInside)
        button4.setTitleColor(.black, for: .normal)
        button4.snp.makeConstraints { make in
            make.top.equalTo(button3.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
        view.addSubview(button5)
        button5.setTitle("buton5", for: .normal)
        button5.addTarget(self, action: #selector(button5Tapped), for: .touchUpInside)
        button5.setTitleColor(.black, for: .normal)
        button5.snp.makeConstraints { make in
            make.top.equalTo(button4.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
        view.addSubview(button6)
        button6.setTitle("buton6", for: .normal)
        button6.addTarget(self, action: #selector(button6Tapped), for: .touchUpInside)
        button6.setTitleColor(.black, for: .normal)
        button6.snp.makeConstraints { make in
            make.top.equalTo(button5.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
    }

    
    @objc func buttonTapped() {
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertController.Style.alert)
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func button2Tapped() {
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func button3Tapped() {
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: { btn in
            print(btn.title!)
        }))
        alert.addAction(UIAlertAction(title: "Here", style: UIAlertAction.Style.default, handler: { buton3 in
            print(buton3.title!)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func button4Tapped() {
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertController.Style.alert)
        alert.addTextField { (textfield) in
            textfield.placeholder = "Enter text"
        }
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0]
            print("Text field: \(textField!.text!)")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func button5Tapped() {
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Option 1", style: UIAlertAction.Style.default, handler: nil))
        alert.addAction(UIAlertAction(title: "Option 2", style: UIAlertAction.Style.default, handler: nil))
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func button6Tapped() {
        let text = "this is a text."
        let activity = UIActivityViewController(activityItems: [UIImage(systemName: "heart")!, text], applicationActivities: nil)
        activity.popoverPresentationController?.sourceView = self.view
        self.present(activity, animated: true, completion: nil)
    }

}
