//
//  Register.swift
//  head2toe
//
//  Created by Dwayne on 18/2/2023.
//

import SwiftUI

struct Register: View {
    var handler: (SignUpModel) -> Void
    @State private var signUpModel = SignUpModel(username: "", email: "", password: "", confirmPassword: "")
    @State private var isFormValid = false
    
    var body: some View {
        NavigationView {
                   VStack {
                       TextField("Username", text: $signUpModel.username)
                           .padding()
                       TextField("Preffered Conotact", text: $signUpModel.email)
                           .padding()
                       SecureField("Passwoord", text: $signUpModel.password)
                           .padding()
                       SecureField("Confirm Password", text: $signUpModel.confirmPassword)
                           .padding()
                       
                       Button(action: {
                           let user = SignUpModel(username: self.signUpModel.username, email: self.signUpModel.email, password: self.signUpModel.password, confirmPassword: self.signUpModel.confirmPassword)
                           self.handler(user)
                       }, label: {
                           Text("Register")
                       })
                       .disabled(!signUpModel.isValid() || !signUpModel.passwordMatch)
                   }
                   .onChange(of: signUpModel) { newValue in
                       print("signUpModel changed to \(newValue)")
                   }
                   .navigationBarTitle(Text("Register"))
                   .navigationBarItems(trailing: NavigationLink(destination: OptionView(), label: { Text("Next") }))
               }
           }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register { user in
            print("username is \(user.username) \(user.email)")
        }
    }
}
