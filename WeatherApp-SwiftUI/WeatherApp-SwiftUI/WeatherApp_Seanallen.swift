//
//  WeatherApp_Seanallen.swift
//  WeatherApp-SwiftUI
//
//  Created by Darshan Kalathiya on 07/02/25.
//

import SwiftUI

struct WeatherApp_Seanallen: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: isNight ? .black : .blue, bottomColor: isNight ? .gray : Color("lightBlue"))
            VStack {
                CityTextView(cityName: "Ahmedabad")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)
                
                Spacer()
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", imgName: "cloud.sun.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "WED", imgName: "sun.max.fill", temperature: 88)
                    WeatherDayView(dayOfWeek: "THU", imgName: "wind.snow", temperature: 55)
                    WeatherDayView(dayOfWeek: "FRI", imgName: "sunset.fill", temperature: 60)
                    WeatherDayView(dayOfWeek: "SAT", imgName: "snow", temperature: 25)
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                }label: {
                    WeatherButton(title: "Change Day Time", textColor: Color.blue, backgroundColor: Color.white)
                }.padding(.bottom, 50)
                
            }
        }
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imgName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium,design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imgName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
        }
        
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,bottomColor]),                     startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32,weight: .medium,design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70,weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280,height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold,design: .default))
            .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherApp_Seanallen()
    }
}
