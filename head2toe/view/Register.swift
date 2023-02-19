//
//  Register.swift
//  head2toe
//
//  Created by Dwayne on 18/2/2023.
//

import SwiftUI

struct Register: View {
    var handler: (SignUpModel) -> Void
//    @State private var signUpModel = SignUpModel(
//        username: "",
//        email: "",
//        password: "",
//        confirmPassword: ""
//    )
    @State private var isFormValid = false
    @AppStorage("USER_KEY") var savedUser: String = ""
    @AppStorage("Contact_KEY") var savedContact: String = ""
    @State private var name = ""
    @State private var email = ""
    
    
    var body: some View {
        NavigationView {
                   VStack {
                       TextField("Username", text: $name)
                           .padding()
                           .onChange(of: name) { text in
                           self.savedUser = name
                       }
                       .onAppear {
                           self.name = savedUser
                       }
                       TextField("Preffered Contact", text: $email)
                           .padding()
                           .onChange(of: email) { text in
                               self.savedContact = email
                           }
                           .onAppear {
                               self.email = savedContact
                           }
//                       SecureField("Passwoord", text: $signUpModel.password)
//                           .padding()
//                       SecureField("Confirm Password", text: $signUpModel.confirmPassword)
//                           .padding()
                       
                       Button(action: {
//                           let user = SignUpModel(
//                            username: self.signUpModel.username,
//                            email: self.signUpModel.email
//                            password: self.signUpModel.password,
//                            confirmPassword: self.signUpModel.confirmPassword
//                           )
//                           self.handler(user)
                       }, label: {
//                           Text("Register")
                       })
//                       .disabled(!signUpModel.isValid() || !signUpModel.passwordMatch)
                   }
//                   .onChange(of: signUpModel) { newValue in
//                       print("signUpModel changed to \(newValue)")
//                   }
                   .navigationBarTitle(Text("Details"))
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
