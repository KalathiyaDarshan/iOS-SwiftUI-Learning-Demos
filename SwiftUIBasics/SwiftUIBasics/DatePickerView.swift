//
//  DatePickerView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 10/07/25.
//

import SwiftUI

struct DatePickerView: View {
    
    @State var selectedDate: Date = Date()
    let startingDate : Date = Calendar.current.date(from: DateComponents(year: 2020)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        
        VStack(spacing: 10) {
            Text("Selected Date")
                .font(.title)
            Text(dateFormatter.string(from: selectedDate))
                .font(.title2)
            
            
            // DatePicker("Select Date", selection: $selectedDate)
            // DatePicker("Select Date", selection: $selectedDate,displayedComponents: [.date,.hourAndMinute])
            DatePicker("Select Date", selection: $selectedDate,in: startingDate...endingDate)
                .accentColor(Color.red) //  depereceted iOS 16
            //.tint(Color.red) //tint' is only available in iOS 16.0 or newer
                .datePickerStyle(
                    CompactDatePickerStyle()
                    // GraphicalDatePickerStyle()
                    // WheelDatePickerStyle()
                )
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
