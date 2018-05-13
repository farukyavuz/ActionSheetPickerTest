//
//  ViewController.swift
//  ActionSheetPickerTest
//
//  Created by Faruk Yavuz on 13.05.2018.
//  Copyright © 2018 Faruk Yavuz. All rights reserved.
//

import UIKit
import ActionSheetPicker_3_0

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonTabbed(_ sender: Any) {
//        ActionSheetStringPicker.show(withTitle: "Eviniz Kaç m²?", rows: ["0-150 m²", "150-300 m²", "300-450 m²"], initialSelection: 1, doneBlock: {
//            picker, value, index in
//
//            print("value = \(value)")
//            print("index = \(index)")
//            print("picker = \(picker)")
//            return
//        }, cancel: { ActionStringCancelBlock in return }, origin: sender)
        
        
        let cancelButton = getBarButton("İptal")
        let doneButton = getBarButton("Tamamla")

        let actionSheetStringPicker = ActionSheetStringPicker(title: "Eviniz Kaç m²?", rows: ["0-150 m²", "150-300 m²", "300-450 m²"], initialSelection: 0, doneBlock: { (picker : ActionSheetStringPicker?, selectedIndex : Int, selectedItem : Any?) in

        }, cancel: { (picker : ActionSheetStringPicker?) in

        }, origin: sender)

        actionSheetStringPicker!.setCancelButton(cancelButton)
        actionSheetStringPicker!.setDoneButton(doneButton)
        actionSheetStringPicker!.show()
        
    }
    
    func getBarButton(_ title : String) -> UIBarButtonItem{
        let customButton =  UIButton.init(type: UIButtonType.custom)
        customButton.setTitle(title, for: .normal)
        customButton.setTitleColor(self.view.tintColor, for: UIControlState.normal)
        //customButton.roundCorner(5)
        customButton.frame = CGRect.init(x: 0, y: 5, width: 80, height: 32)
        //customButton.backgroundColor = UIColor.green
        return UIBarButtonItem.init(customView: customButton)
    }
    
    
}

