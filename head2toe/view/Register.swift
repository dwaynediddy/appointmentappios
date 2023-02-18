//
//  Register.swift
//  head2toe
//
//  Created by Dwayne on 18/2/2023.
//

import SwiftUI

struct Register: View {
    var handler: (SignUpModel) -> Void
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .padding()
            TextField("Email", text: $email)
                .padding()
            SecureField("Username", text: $username)
                .padding()
            SecureField("Confirm Password", text: $confirmPassword)
                .padding()
            Button(action: {
                let user = SignUpModel(username: self.username, email: self.email, password: self.password, confirmPassword: self.confirmPassword)
                self.handler(user)
            }, label: {
                Text("Register")
            })
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
