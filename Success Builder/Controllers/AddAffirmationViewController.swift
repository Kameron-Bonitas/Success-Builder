//
//  AddAffirmationViewController.swift
//  Success Builder
//
//  Created by Ben on 19.05.2020.
//  Copyright © 2020 Ben. All rights reserved.
//

import UIKit

class AddAffirmationViewController: UIViewController {
    
        let backgroundImage = UIImageView()
        let ownAffiButton = UIButton()
        let chooseAffiButton = UIButton()
        let cancelButton = UIButton()
        let backgroundColorView: UIView = UIView()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
    }
    
    //  MARK: - Button ACTIONS
    @objc func cancelButtonAction() {
    // Povertannya do golovnogo (myAffi)
        makeVerticalTransitionFromBottom()
        self.navigationController?.popToRootViewController( animated: true)
        }
    
    @objc func chooseAffiButtonAction() {
        let listVC = ListAffirmationsViewController()
         makeVerticalTransitionFromTop()
        self.navigationController?.pushViewController(listVC, animated: true)
        }
    

    @objc  func ownAffiButtonAction(){
     let popaVC = PopUpViewController ()
         popaVC.editingAffi = false
        makeVerticalTransitionFromTop()
        self.navigationController?.pushViewController(popaVC, animated: true)
    }
    
    
    //MARK:    SetupView
    func setupView() {
        //backgroundColorView shob ne bulo vydno bat'kivs'kyj VC
        backgroundColorView.backgroundColor = UIColor.white.withAlphaComponent(1)
        backgroundColorView.isOpaque = false
        view.addSubview(backgroundColorView)
        
        // Background View
        setupBackground(imageView: backgroundImage, imageNamed: "background.png", to: self.view)
        
        //Own affirmation button
        ownAffiButton.setTitle(NSLocalizedString("Add my own", comment: "Add my own"), for: .normal)
        ownAffiButton.setTitleColor(UIColor (named: "bigButtonTextColor"), for: .normal)
     ownAffiButton.titleLabel?.font = UIFont(name: "Lato-Light", size: 30)
        ownAffiButton.backgroundColor = UIColor(named: "bigButtonColor")
        ownAffiButton.layer.cornerRadius = 10.0
        ownAffiButton.addTarget(self, action: #selector(ownAffiButtonAction), for: .touchUpInside)
        self.view.addSubview(ownAffiButton)
        
        //Choose affirmations button
        chooseAffiButton.setTitle(NSLocalizedString("Choose affirmations", comment: "Choose affirmations"), for: .normal)
        chooseAffiButton.setTitleColor(UIColor (named: "bigButtonTextColor"), for: .normal)
     chooseAffiButton.titleLabel?.font = UIFont(name: "Lato-Light", size: 30)
        chooseAffiButton.backgroundColor = UIColor(named: "bigButtonColor")
        chooseAffiButton.layer.cornerRadius = 10.0
        chooseAffiButton.addTarget(self, action: #selector(chooseAffiButtonAction), for: .touchUpInside)
        self.view.addSubview(chooseAffiButton)
        
        //Cancel button
        cancelButton.setTitle(NSLocalizedString("Cancel", comment: "Cancel"), for: .normal)
        cancelButton.setTitleColor(UIColor (named: "bigButtonTextColor"), for: .normal)
    cancelButton.titleLabel?.font = UIFont(name: "Lato-Light", size: 30)
        cancelButton.backgroundColor = UIColor(named: "bigButtonColor")
        cancelButton.layer.cornerRadius = 10.0
        cancelButton.addTarget(self, action: #selector(cancelButtonAction), for: .touchUpInside)
        self.view.addSubview(cancelButton)
        }
    
    // MARK:  Setup Layout
        func setupLayout(){
        //BackgroundColorView
        backgroundColorView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
              backgroundColorView.topAnchor.constraint(equalTo: self.view.topAnchor),
              backgroundColorView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
              backgroundColorView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
              backgroundColorView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
                ])
        //Own affirmation button
        ownAffiButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            ownAffiButton.heightAnchor.constraint(equalToConstant: 62),
            ownAffiButton.bottomAnchor.constraint(equalTo: chooseAffiButton.topAnchor, constant:-17),
            ownAffiButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -30),
            ownAffiButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 30)
            ])
        //Choose affirmations button
        chooseAffiButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            chooseAffiButton.heightAnchor.constraint(equalToConstant: 62),
            chooseAffiButton.bottomAnchor.constraint(equalTo: cancelButton.topAnchor, constant:-17),
            chooseAffiButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -30),
            chooseAffiButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 30)
            ])
        //Cancel button
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cancelButton.heightAnchor.constraint(equalToConstant: 62),
            cancelButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -30),
            cancelButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 30),
                cancelButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -47)
            ])
          }

   
    
    
    //MARK:- Reusable Function Background
            func setupBackground(imageView: UIImageView, imageNamed imageName: String, to view: UIView) {
                imageView.image = UIImage(named: imageName)
                imageView.contentMode = .scaleAspectFill
                view.addSubview(imageView)
                
                imageView.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.view.topAnchor),
            imageView.bottomAnchor.constraint(equalTo:self.view.bottomAnchor),
            imageView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
                ])
        }

}
