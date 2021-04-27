//
//  LightsViewController.swift
//  ZooLights2
//
//  Created by Catherine Fiore on 3/18/21.
//

import UIKit

class LightsViewController: UIViewController {

    
    //--------------Light One------------------------------
    @IBOutlet var mySwitch: UISwitch!
    @IBOutlet var light: UIImageView!
    @IBOutlet var grayOut: UIImageView!
    @IBOutlet var redColor: UIButton!
    @IBOutlet var orangeColor: UIButton!
    @IBOutlet var yellowColor: UIButton!
    @IBOutlet var blueColor: UIButton!
    @IBOutlet var greenColor: UIButton!
    @IBOutlet var whiteColor: UIButton!
    @IBOutlet var brightness: UISlider!

    
    //--------------Light Two------------------------------
    @IBOutlet var mySwitch2: UISwitch!
    @IBOutlet var light2: UIImageView!
    @IBOutlet var grayOut2: UIImageView!
    @IBOutlet var redColor2: UIButton!
    @IBOutlet var orangeColor2: UIButton!
    @IBOutlet var yellowColor2: UIButton!
    @IBOutlet var blueColor2: UIButton!
    @IBOutlet var greenColor2: UIButton!
    @IBOutlet var whiteColor2: UIButton!
    @IBOutlet var brightness2: UISlider!
    
    //--------------Light Three------------------------------
    @IBOutlet var mySwitch3: UISwitch!
    @IBOutlet var light3: UIImageView!
    @IBOutlet var grayOut3: UIImageView!
    @IBOutlet var redColor3: UIButton!
    @IBOutlet var orangeColor3: UIButton!
    @IBOutlet var yellowColor3: UIButton!
    @IBOutlet var blueColor3: UIButton!
    @IBOutlet var greenColor3: UIButton!
    @IBOutlet var whiteColor3: UIButton!
    @IBOutlet var brightness3: UISlider!
    
    //--------------Light Four------------------------------
    @IBOutlet var mySwitch4: UISwitch!
    @IBOutlet var light4: UIImageView!
    @IBOutlet var grayOut4: UIImageView!
    @IBOutlet var redColor4: UIButton!
    @IBOutlet var orangeColor4: UIButton!
    @IBOutlet var yellowColor4: UIButton!
    @IBOutlet var blueColor4: UIButton!
    @IBOutlet var greenColor4: UIButton!
    @IBOutlet var whiteColor4: UIButton!
    @IBOutlet var brightness4: UISlider!
    
    //--------------Light Five------------------------------
    @IBOutlet var mySwitch5: UISwitch!
    @IBOutlet var light5: UIImageView!
    @IBOutlet var grayOut5: UIImageView!
    @IBOutlet var redColor5: UIButton!
    @IBOutlet var orangeColor5: UIButton!
    @IBOutlet var yellowColor5: UIButton!
    @IBOutlet var blueColor5: UIButton!
    @IBOutlet var greenColor5: UIButton!
    @IBOutlet var whiteColor5: UIButton!
    @IBOutlet var brightness5: UISlider!
    
    //--------------Light Six------------------------------
    @IBOutlet var mySwitch6: UISwitch!
    @IBOutlet var light6: UIImageView!
    @IBOutlet var grayOut6: UIImageView!
    @IBOutlet var redColor6: UIButton!
    @IBOutlet var orangeColor6: UIButton!
    @IBOutlet var yellowColor6: UIButton!
    @IBOutlet var blueColor6: UIButton!
    @IBOutlet var greenColor6: UIButton!
    @IBOutlet var whiteColor6: UIButton!
    @IBOutlet var brightness6: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        brightness.value = 50
        brightness2.value = 50
        brightness3.value = 50
        brightness4.value = 50
        brightness5.value = 50
        brightness6.value = 50
    }
    
    //--------------Light One Func------------------------------
    
    @IBAction func switchDidChange(_ sender: UISwitch){
        if sender.isOn{
            grayOut.isHidden = true
            brightness.isEnabled = true
            light.tintColor = .white}
        else{
            grayOut.isHidden = false
            brightness.isEnabled = false
            light.tintColor = .darkGray}
    }
    
    @IBAction func sliderValChange(_ sender: UISlider){
        if mySwitch.isOn == false {
            sender.isEnabled = true
        }
        else{
            let currentValue = CGFloat(brightness.value)
            //brightnessVal.text = "\(currentValue)"
            light.alpha = currentValue/100}
    }
    
    @IBAction func buttonPress(_ sender: UIButton){
        if mySwitch.isOn == false {
            sender.isEnabled = true
        }
        else{
            if sender == redColor{ light.tintColor = .systemRed }
            if sender == orangeColor{light.tintColor = .systemOrange}
            if sender == yellowColor{ light.tintColor = .systemYellow}
            if sender == blueColor{ light.tintColor = .systemTeal}
            if sender == greenColor{light.tintColor = .systemGreen}
            if sender == whiteColor{light.tintColor = .white}
        }
    }
    //--------------Light Two Func------------------------------
    
    @IBAction func switchDidChange2(_ sender: UISwitch){
        if sender.isOn{
            grayOut2.isHidden = true
            light2.tintColor = .white}
        else{
            grayOut2.isHidden = false
            light2.tintColor = .darkGray}
}
    @IBAction func sliderValChange2(_ sender: UISlider){
        if mySwitch2.isOn == false {
            sender.isEnabled = true
        }
        else{
            let currentValue2 = CGFloat(brightness2.value)
            //brightnessVal.text = "\(currentValue)"
            light2.alpha = currentValue2/100}
    }
    
    @IBAction func buttonPress2(_ sender: UIButton){
        if mySwitch2.isOn == false {
            sender.isEnabled = true
        }
        else{
            if sender == redColor2{ light2.tintColor = .systemRed }
            if sender == orangeColor2{light2.tintColor = .systemOrange}
            if sender == yellowColor2{ light2.tintColor = .systemYellow}
            if sender == blueColor2{ light2.tintColor = .systemTeal}
            if sender == greenColor2{light2.tintColor = .systemGreen}
            if sender == whiteColor2{light2.tintColor = .white}
        }
    }
    //--------------Light Three Func------------------------------
    
    @IBAction func switchDidChange3(_ sender: UISwitch){
        if sender.isOn{
            grayOut3.isHidden = true
            light3.tintColor = .white}
        else{
            grayOut3.isHidden = false
            light3.tintColor = .darkGray}
}
    @IBAction func sliderValChange3(_ sender: UISlider){
        if mySwitch3.isOn == false {
            sender.isEnabled = true
        }
        else{
            let currentValue3 = CGFloat(brightness3.value)
            //brightnessVal.text = "\(currentValue)"
            light3.alpha = currentValue3/100}
    }
    
    @IBAction func buttonPress3(_ sender: UIButton){
        if mySwitch3.isOn == false {
            sender.isEnabled = true
        }
        else{
            if sender == redColor3{ light3.tintColor = .systemRed }
            if sender == orangeColor3{light3.tintColor = .systemOrange}
            if sender == yellowColor3{ light3.tintColor = .systemYellow}
            if sender == blueColor3{ light3.tintColor = .systemTeal}
            if sender == greenColor3{light3.tintColor = .systemGreen}
            if sender == whiteColor3{light3.tintColor = .white}
        }
    }
    
    //--------------Light Four Func------------------------------
    
    @IBAction func switchDidChange4(_ sender: UISwitch){
        if sender.isOn{
            grayOut4.isHidden = true
            light4.tintColor = .white}
        else{
            grayOut4.isHidden = false
            light4.tintColor = .darkGray}
}
    @IBAction func sliderValChange4(_ sender: UISlider){
        if mySwitch4.isOn == false {
            sender.isEnabled = true
        }
        else{
            let currentValue4 = CGFloat(brightness4.value)
            //brightnessVal.text = "\(currentValue)"
            light4.alpha = currentValue4/100}
    }
    
    @IBAction func buttonPress4(_ sender: UIButton){
        if mySwitch4.isOn == false {
            sender.isEnabled = true
        }
        else{
            if sender == redColor4{ light4.tintColor = .systemRed }
            if sender == orangeColor4{light4.tintColor = .systemOrange}
            if sender == yellowColor4{ light4.tintColor = .systemYellow}
            if sender == blueColor4{ light4.tintColor = .systemTeal}
            if sender == greenColor4{light4.tintColor = .systemGreen}
            if sender == whiteColor4{light4.tintColor = .white}
        }
    }
    //--------------Light Five Func------------------------------
    
    @IBAction func switchDidChange5(_ sender: UISwitch){
        if sender.isOn{
            grayOut5.isHidden = true
            light5.tintColor = .white}
        else{
            grayOut5.isHidden = false
            light5.tintColor = .darkGray}
}
    @IBAction func sliderValChange5(_ sender: UISlider){
        if mySwitch5.isOn == false {
            sender.isEnabled = true
        }
        else{
            let currentValue5 = CGFloat(brightness5.value)
            //brightnessVal.text = "\(currentValue)"
            light5.alpha = currentValue5/100}
    }
    
    @IBAction func buttonPress5(_ sender: UIButton){
        if mySwitch5.isOn == false {
            sender.isEnabled = true
        }
        else{
            if sender == redColor5{ light5.tintColor = .systemRed }
            if sender == orangeColor5{light5.tintColor = .systemOrange}
            if sender == yellowColor5{ light5.tintColor = .systemYellow}
            if sender == blueColor5{ light5.tintColor = .systemTeal}
            if sender == greenColor5{light5.tintColor = .systemGreen}
            if sender == whiteColor5{light5.tintColor = .white}
        }
    }


    //--------------Light six Func------------------------------
    
    @IBAction func switchDidChange6(_ sender: UISwitch){
        if sender.isOn{
            grayOut6.isHidden = true
            light6.tintColor = .white}
        else{
            grayOut6.isHidden = false
            light6.tintColor = .darkGray}
}
    @IBAction func sliderValChange6(_ sender: UISlider){
        if mySwitch6.isOn == false {
            sender.isEnabled = true
        }
        else{
            let currentValue6 = CGFloat(brightness6.value)
            //brightnessVal.text = "\(currentValue)"
            light6.alpha = currentValue6/100}
    }
    
    @IBAction func buttonPress6(_ sender: UIButton){
        if mySwitch6.isOn == false {
            sender.isEnabled = true
        }
        else{
            if sender == redColor6{ light6.tintColor = .systemRed }
            if sender == orangeColor6{light6.tintColor = .systemOrange}
            if sender == yellowColor6{ light6.tintColor = .systemYellow}
            if sender == blueColor6{ light6.tintColor = .systemTeal}
            if sender == greenColor6{light6.tintColor = .systemGreen}
            if sender == whiteColor6{light6.tintColor = .white}
        }
    }

    
    
    
    
    
    
}
