//
//  TimeView.swift
//  head2toe
//
//  Created by Dwayne on 19/2/2023.
//

import SwiftUI

struct TimeView: View {
    @State private var time = Date()
    var selectedDate: Date
    
    var body: some View {
        VStack {
            Text("Selected Date: \(selectedDate)")
            DatePicker(
                "",
                selection: $time,
                displayedComponents: [.hourAndMinute]
            )
            .   datePickerStyle(.wheel)
        }
    }
}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView(selectedDate: Date())
    }
}
