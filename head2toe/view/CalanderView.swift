//
//  CalanderView.swift
//  head2toe
//
//  Created by Dwayne on 18/2/2023.
//

import SwiftUI

struct CalanderView: View {
    @State private var date = Date()
    var body: some View {
        DatePicker(
        "Select Date",
        selection: $date,
        displayedComponents: [.date]
        )
            .datePickerStyle(.graphical)
    }
}

struct CalanderView_Previews: PreviewProvider {
    static var previews: some View {
        CalanderView()
    }
}
