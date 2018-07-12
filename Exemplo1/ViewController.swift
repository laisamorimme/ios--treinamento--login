//
//  ViewController.swift
//  Exemplo1
//
//  Created by administrador on 11/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //label:
    @IBOutlet weak var Login: UILabel!
    @IBOutlet weak var NomeMatricula:UILabel!
    
    @IBOutlet weak var NomeSenha: UILabel!
    
    
    @IBOutlet weak var LabelApareceDepois1: UILabel!
    
    @IBOutlet weak var LabelApareceDepois2: UILabel!
    
    @IBOutlet weak var ButtonEntrar: UIButton!
    
    
    //text Field:
    @IBOutlet weak var TextMatricula: UITextField!
    
    @IBOutlet weak var TextSenha: UITextField!
    
    
    //metodo para as outras classes:
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "segueDatalhe"{
            if let controller = segue.destination as? DetalheViewController {
                
                controller.matricula = self.TextMatricula.text
                
                
                
            }
        }
        if segue.identifier == "segueSenhaDetalhe"{
            if let controller = segue.destination as? DetalheSenhaViewController{
                
                controller.senha = self.TextSenha.text
            }
        }
        
        
    }
    
    //metodos:
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.Login.text = "Login"
        self.NomeMatricula.text = "Matricula"
        self.NomeSenha.text = "Senha"
        self.ButtonEntrar.setTitle("Entrar", for:  .normal)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated:Bool){
        super.viewDidAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated:Bool){
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration:10){
            self.view.backgroundColor = .orange
            
        }
    }
    
    override func viewWillDisappear(_ animated:Bool){
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated:Bool){
        super.viewDidDisappear(animated)
    }
    
    //button:
    @IBAction func ButtonEntar(_ sender: Any) {
        
        self.LabelApareceDepois1.text = TextMatricula.text
        self.LabelApareceDepois2.text = TextSenha.text
    }
    @IBAction func ButtonSenha(_ sender: Any) {
        
    }
}
