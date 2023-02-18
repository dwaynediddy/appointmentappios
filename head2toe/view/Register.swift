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
    
    var body: some View {
        VStack {
            TextField("Username", text: $signUpModel.username)
                .padding()
            TextField("Email", text: $signUpModel.email)
                .padding()
            SecureField("Username", text: $signUpModel.password)
                .padding()
            SecureField("Confirm Password", text: $signUpModel.confirmPassword)
                .padding()
            Button(action: {
                let user = SignUpModel(username: self.signUpModel.username, email: self.signUpModel.email, password: self.signUpModel.password, confirmPassword: self.signUpModel.confirmPassword)
                self.handler(user)
            }, label: {
                Text("Register")
            })
            .disabled(!signUpModel.passwordMatch)
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
