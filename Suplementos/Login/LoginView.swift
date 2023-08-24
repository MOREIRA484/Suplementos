//
//  LoginView.swift
//  Suplementos
//
//  Created by leonardo Moreira on 23/08/23.
//

import SwiftUI

struct LoginView: View {
    @State private var isSecure: Bool = true
    
    @State private var email = ""
    @State private var lock = ""
    var body: some View {
       NavigationView {
            VStack{
                
                
                //MARK: IMAGEM HEADER
                Image("halter")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    
                    .ignoresSafeArea()
                
               Spacer()
                
                
                HStack{
                    
                    //MARK: - TITULO
                    
                    VStack {
                        Text("Welcom Back")
                            .font(.system(size: 40))
                            .foregroundColor(Color("Color"))
                            .font(.title)
                            .fontWeight(.semibold)
                            .padding(.leading, 50)
                        
                        
                        //MARK: - SUBTITULO
                        
                        
                        Text("Login to your account")
                            .foregroundColor(Color.gray)
                            .opacity(0.5)
                            .padding(.leading, 50)
                        
                        
                        
                    }
                    
                    //MARK: IMAGEM DOS ALIMENTOS/ SUPLEMENTOS. LADO DIREITO DA TELA!
                    
                        Image("alimento")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 90)
                       
                }
        
                
            
                //MARK: - estrutura do Nome !
                HStack{
                    Image(systemName: "person.fill")
                        .foregroundColor(Color("Color"))
                        .padding()
                    
                    
                    TextField("Full Name", text: $email)
                        
                        .bold()
                    

                }
                .frame(width: 350, height: 38)
                .cornerRadius(20)
                .opacity(0.9)
                .padding(.top)
                
            
                HStack{
                    
                    //MARK: - estrutura da senha !
                    Image(systemName: "exclamationmark.lock.fill")
                        .foregroundColor(Color("Color"))
                        .padding()
            
                        
                    if isSecure {
                        
                        SecureField("*******", text: $lock)
                    } else {
                        
                        TextField("*******", text: $lock)
                    }
                        
                        
                        Button {
                            isSecure.toggle()
                        } label: {
                            Image(systemName: isSecure ?  "eye.slash": "eye")
                                .foregroundColor(Color.black)
                                .padding(.trailing, 30)
                        }
                    
                    
                    

                
                }                .frame(width: 350, height: 38)
                .cornerRadius(20)
                .opacity(0.9)
                .padding(10)
                
                
                HStack {
                    
                    
                    //MARK: - OPÇÃO PARA VOCÊ LEMBRAR A SENHA OU NÃO !
                    Text("remember Me")
                        .foregroundColor(Color.gray)
                        .opacity(0.5)
                        .padding(.leading, 50)
                    
                        Spacer()
                    
                    
                    
                    //MARK: - BOTÃO CASO VOCÊ ESQUEÇA SUA SENHA E QUEIRA REDEFINIR ELA
                    
                    Button {
                        //
                    } label: {
                        Text("Forgot Password ?")
                            .foregroundColor(Color("Color"))
                            .font(.footnote)
                            .padding(.trailing, 30)
                    }
                }
                
                
                VStack{
                    
                    
                    Spacer()
                    
                    
                    
                    //MARK: -  BOTÃO PARA FAZER O LOGIN DO APLICATIVO !
                    
                    
                    Button {
                        //
                    } label: {
                        
                        
                        Text("Login")
                        
                            .bold()
                            .foregroundColor(Color.white)
                            .frame(width: 350, height: 50)
                            .background(Color("Color"))
                            .cornerRadius(50)
                            .padding(.bottom, 10)
                        
                    }
                    
                    
                    HStack {
                        
                        
                        Text("Don't have account ?")
                            .foregroundColor(Color.gray)
                        
                        
                        
                        //MARK: - CASO VOCE QUEIRA CRIAR UMA CONTA BASTA APERTAR NO SING UP
                        
                        Button {
                            //
                        } label: {
                            
                            NavigationLink {
                                RegisterView()
                            } label: {
                                Text("Sing up")
                                    .foregroundColor(Color("Color"))
                            }
                        }
                    }
                }
            }
           

           }
        }
    }


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
