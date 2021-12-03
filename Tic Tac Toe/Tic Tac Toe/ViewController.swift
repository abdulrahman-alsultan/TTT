//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by admin on 03/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var playerX: [Int] = []
    var playerY: [Int] = []
    var canPlay: Bool = true
    var player = 1
    
    @IBOutlet weak var btnText0: UIButton!
    @IBOutlet weak var btnText1: UIButton!
    @IBOutlet weak var btnText2: UIButton!
    @IBOutlet weak var btnText3: UIButton!
    @IBOutlet weak var btnText4: UIButton!
    @IBOutlet weak var btnText5: UIButton!
    @IBOutlet weak var btnText6: UIButton!
    @IBOutlet weak var btnText7: UIButton!
    @IBOutlet weak var btnText8: UIButton!
    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var winnerLable: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resetBtn.isEnabled = false
    }
    
    func isGameFinish(){
        if (playerX.count + playerY.count == 9) {
            resetBtn.setTitle("Reset", for: .normal)
            resetBtn.isEnabled = true
            winnerLable.text = "No one win"
        }
        else if isFirstPlayerWin() || isSecondPlayerWin(){
            if player == 2 {
                winnerLable.text = "Player X win"
            }
            else{
                winnerLable.text = "Player O win"
            }
            resetBtn.setTitle("Reset", for: .normal)
            resetBtn.isEnabled = true
            enableBtn(enable: false)
        }
    }
    
    func isFirstPlayerWin() -> Bool{
        return(
        playerX.contains(0) && playerX.contains(1) && playerX.contains(2) ||
        playerX.contains(3) && playerX.contains(4) && playerX.contains(5) ||
        playerX.contains(6) && playerX.contains(7) && playerX.contains(8) ||
        playerX.contains(0) && playerX.contains(3) && playerX.contains(6) ||
        playerX.contains(1) && playerX.contains(4) && playerX.contains(7) ||
        playerX.contains(2) && playerX.contains(5) && playerX.contains(8) ||
        playerX.contains(0) && playerX.contains(4) && playerX.contains(8) ||
        playerX.contains(2) && playerX.contains(4) && playerX.contains(6))
    }
    
    func isSecondPlayerWin() -> Bool{
        return(
        (playerY.contains(0) && playerY.contains(1) && playerY.contains(2)) ||
        (playerY.contains(3) && playerY.contains(4) && playerY.contains(5)) ||
        (playerY.contains(6) && playerY.contains(7) && playerY.contains(8)) ||
        (playerY.contains(0) && playerY.contains(3) && playerY.contains(6)) ||
        (playerY.contains(1) && playerY.contains(4) && playerY.contains(7)) ||
        (playerY.contains(2) && playerY.contains(5) && playerY.contains(8)) ||
        (playerY.contains(0) && playerY.contains(4) && playerY.contains(8)) ||
        (playerY.contains(2) && playerY.contains(4) && playerY.contains(6)))
    }
    
    func enableBtn(enable: Bool){
        btnText0.isEnabled = enable
        btnText1.isEnabled = enable
        btnText2.isEnabled = enable
        btnText3.isEnabled = enable
        btnText4.isEnabled = enable
        btnText5.isEnabled = enable
        btnText6.isEnabled = enable
        btnText7.isEnabled = enable
        btnText8.isEnabled = enable
    }

    
    
    @IBAction func resetClicked(_ sender: Any) {
        print("reset")
        enableBtn(enable: true)
        btnText0.setTitle("", for: .normal)
        btnText1.setTitle("", for: .normal)
        btnText2.setTitle("", for: .normal)
        btnText3.setTitle("", for: .normal)
        btnText4.setTitle("", for: .normal)
        btnText5.setTitle("", for: .normal)
        btnText6.setTitle("", for: .normal)
        btnText7.setTitle("", for: .normal)
        btnText8.setTitle("", for: .normal)
        resetBtn.setTitle("", for: .normal)
        resetBtn.isEnabled = false
        winnerLable.text = ""
        playerY.removeAll()
        playerX.removeAll()
        player = 1
    }
    
    
    func addMove(boxNumber: Int, btn: UIButton!){
        if player == 1 {
            btn.setTitle("X", for: .normal)
            btn.setTitleColor(.green, for: .normal)
            player = 2
            playerX.append(boxNumber)
        }
        else{
            btn.setTitle("O", for: .normal)
            btn.setTitleColor(UIColor.red, for: .normal)
            player = 1
            playerY.append(boxNumber)
        }
        btn.isEnabled = false
        isGameFinish()
    }
    
    
    
    
    
    
    @IBAction func btn0(_ sender: Any) {
        addMove(boxNumber: 0, btn: btnText0)
    }
    
    
    @IBAction func btn1(_ sender: Any) {
        addMove(boxNumber: 1, btn: btnText1)
    }
    
    @IBAction func btn2(_ sender: Any) {
        addMove(boxNumber: 2, btn: btnText2)
    }
    
    @IBAction func btn3(_ sender: Any) {
        addMove(boxNumber: 3, btn: btnText3)
    }
    
    @IBAction func btn4(_ sender: Any) {
        addMove(boxNumber: 4, btn: btnText4)
    }
    
    @IBAction func btn5(_ sender: Any) {
        addMove(boxNumber: 5, btn: btnText5)
    }
    
    @IBAction func btn6(_ sender: Any) {
        addMove(boxNumber: 6, btn: btnText6)
    }
    
    @IBAction func btn7(_ sender: Any) {
        addMove(boxNumber: 7, btn: btnText7)
    }
    
    @IBAction func btn8(_ sender: Any) {
        addMove(boxNumber: 8, btn: btnText8)
    }
    
    
    
    
    
    
    
    
    

}

