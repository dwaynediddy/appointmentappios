//
//  CalanderView.swift
//  head2toe
//
//  Created by Dwayne on 18/2/2023.
//

import SwiftUI

struct CalanderView: View {
    @State private var date = Date()

    var minDate: Date {
        return Calendar.current.date(byAdding: .day, value: 3, to: Date())!
    }

    var maxDate: Date {
        return Calendar.current.date(byAdding: .day, value: 14, to: Date())!
    }

    var body: some View {
        NavigationView {
            VStack {
                DatePicker(
                    "Select Date",
                    selection: $date,
                    in: minDate...maxDate,
                    displayedComponents: [.date]
                )
                .datePickerStyle(.graphical)

                NavigationLink(
                    destination: TimeView(selectedDate: date),
                    label: {
                        Text("Select Time")
                    })
            }
        }
    }
}

struct CalanderView_Previews: PreviewProvider {
    static var previews: some View {
        CalanderView()
    }
}
