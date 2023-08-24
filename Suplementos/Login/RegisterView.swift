//
//  RegisterView.swift
//  Suplementos
//
//  Created by leonardo Moreira on 23/08/23.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var lock = ""
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack{
           
                
                VStack {
                    
                  //MARK: TITULO
                    
                    Text("Register")
                        .font(.system(size: 40))
                        .foregroundColor(Color("Color"))
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.leading, 50)
                    
                    
                    //MARK: SUBTITULO
                    
                    Text("Create your new account")
                        .foregroundColor(Color.gray)
                        .opacity(0.5)
                        .padding(.leading, 50)
                    
                    
                    
                }
                
                //MARK: - IMAGEM LADO DIREIRO DO APLICATIVO
                    Image("alimento")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 90)
                
        
                   
            }
            
            HStack{
                
                //MARK: - IMAGEM DO SYSTEMNAME PERSON
                
                Image(systemName: "person.fill")
                    .foregroundColor(Color("Color"))
                    .padding()
                
                //MARK: REGISTRAR SEU NOME
                
                TextField("Full Name", text: $name)
                    
                    .bold()
                

            }
            .frame(width: 350, height: 38)
            .cornerRadius(20)
            .opacity(0.9)
            .padding(.top)
            
            
            HStack{
                
                //MARK: - SYSTEMNAME PARA O EMAIL
                
                Image(systemName: "mail.fill")
                    .foregroundColor(Color("Color"))
                    .padding()
                
                
                TextField("Exemplo@gmailcom", text: $email)
                    
                    .bold()
                

            }
            .frame(width: 350, height: 38)
            .cornerRadius(20)
            .opacity(0.9)
            .padding(.top)
            
            
            HStack{
                
                //MARK: - SYSTEMNAME PARA A SENHA
                
                Image(systemName: "exclamationmark.lock.fill")
                    .foregroundColor(Color("Color"))
                    .padding()
                
                
                SecureField("Password", text: $password)
                           .bold()
                

            }
            .frame(width: 350, height: 38)
            .cornerRadius(20)
            .opacity(0.9)
            .padding(.top)
            
            
            HStack{
                
                //MARK: - SYSTEMNAME PARA O CONFIRMAÇÃO DA SENHA
                
                Image(systemName: "exclamationmark.lock.fill")
                    .foregroundColor(Color("Color"))
                    .padding()
                
                
                SecureField("Confirm Password", text: $lock)
                    
                    .bold()
                

            }
            .frame(width: 350, height: 38)
            .cornerRadius(20)
            .opacity(0.9)
            .padding(.top)
            
            
            //MARK: - TITULO PARTE DE BAIXO
            
            Text("By Signing you agree to our Team of use and privacy notice")
                .foregroundColor(Color("Color"))
                .font(.footnote)
                .padding(30)
                .lineLimit(2)
               
            Spacer()
            
            VStack{
                
             
                
                //MARK: BOTÃO PARA REGISTRAR SUA CONTA
                
                Button {
                    //
                } label: {
                    
                   
                    
                    Text("Sing Up")
                    
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 350, height: 50)
                        .background(Color("Color"))
                        .cornerRadius(50)
                        .padding(.bottom, 10)
                        
                }
                
                
                HStack {
                    
                    //MARK: -
                    
                    
                    Text("Don't have account ?")
                        .foregroundColor(Color.gray)
                    
                    
                    Button {
                        //
                    } label: {
                        Text("Sing up")
                            .foregroundColor(Color("Color"))
                    }
                }
                .padding(.bottom, 40)
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
