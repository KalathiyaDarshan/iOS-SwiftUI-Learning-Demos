//
//  WeatherApp_Udemy.swift
//  WeatherApp-SwiftUI
//
//  Created by Darshan Kalathiya on 16/07/25.
//

import SwiftUI

struct WeatherApp_Udemy: View {
    
    @State var isDayTime: Bool = true
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(
                colors: [
                    isDayTime ? Color.blue : Color.black,
                    isDayTime ? Color("lightBlue") : Color.gray
                ]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 100) {
                Text("India")
                    .foregroundColor(Color.white)
                    .font(.system(size: 32))
                
                VStack(spacing: 4) {
                    Image(systemName:
                            isDayTime ? "cloud.sun.fill" : "moon.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200,height: 200)
                      
                    // Option + shift + 8 = °
                    Text("20°")
                        .foregroundColor(Color.white)
                        .font(.system(size: 36))
                    
                }
                
                HStack {
                    DayWeatherContainer(day: "MON", iconName: "cloud.sun.fill", temp: 23)
                    DayWeatherContainer(day: "TUE", iconName: "sun.max.fill", temp: 33)
                    DayWeatherContainer(day: "WED", iconName: "wind.snow", temp: 8)
                    DayWeatherContainer(day: "THU", iconName: "sunset.fill", temp: 23)
                    DayWeatherContainer(day: "FRI", iconName: "snow", temp: 3)
                    DayWeatherContainer(day: "SAT", iconName: "cloud.sun.fill", temp: 31)
                }
                
                Button {
                    isDayTime.toggle()
                }label: {
                    Text("Change Day Time")
                        .frame(width: 280,height: 50)
                        .background(Color.white)
                        .foregroundColor(Color.blue)
                        .cornerRadius(10)
                        .font(.system(size: 20,weight: .bold))
                }
                .padding(.bottom)
            }
        }
    }
}

struct DayWeatherContainer: View {
    
    let day: String
    let iconName: String
    let temp: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Text(day)
                .font(.system(size: 25))
                .foregroundColor(Color.white)
            
            Image(systemName: iconName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30,height: 30)

            Text("\(temp)°")
                .font(.system(size: 25))
                .foregroundColor(Color.white)

        }
    }
}

struct WeatherApp_Udemy_Previews: PreviewProvider {
    static var previews: some View {
        WeatherApp_Udemy()
    }
}
