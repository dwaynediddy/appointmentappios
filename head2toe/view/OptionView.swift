//
//  OptionView.swift
//  head2toe
//
//  Created by Dwayne on 18/2/2023.
//

import SwiftUI

struct OptionView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Options")
                        .font(.title)
                        .padding(100)
                    Text("Front Yard 100-200sqft")
                    Text("price")
                        .padding()
                    NavigationLink(
                        destination: CalanderView(),
                        label: {
                            Text("Book!")
                                .font(.headline)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .padding()
                        })
                }
            }
        }
    }
    
    struct OptionView_Previews: PreviewProvider {
        static var previews: some View {
            OptionView()
        }
    }
}
