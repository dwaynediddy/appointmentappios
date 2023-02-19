//
//  RegisterButtonView.swift
//  head2toe
//
//  Created by Dwayne on 19/2/2023.
//

import SwiftUI

struct RegisterButtonView: View {
    var body: some View {
        NavigationView {
            NavigationLink(
                destination: OptionView(),
                label: {
                    Text("Register")
                })
            .foregroundColor(.blue)
        }
    }
}

struct RegisterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterButtonView()
    }
}
