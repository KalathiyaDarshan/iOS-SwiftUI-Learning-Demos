//
//  OnboardingView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 15/07/25.
//

import SwiftUI

struct OnboardingView: View {
    
    //Onbording states:
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add Age
     3 - Add gender
     */
    
    @State var onBoardingState: Int = 0
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))

    // onboarding inputs
    @State var txtName: String = ""
    @State var age: Double = 20
    @State var gender: Gender = .male
    
    // for the alert
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSinedIn: Bool = false
    
    var body: some View {
        ZStack {
            
           //Content
            ZStack {
                switch onBoardingState {
                    case 0:
                        welcomeSection
                            .transition(transition)
                        
                    case 1:
                        addNameSection
                            .transition(transition)
                    
                    case 2:
                        addAgeSection
                            .transition(transition)
                        
                    case 3:
                        addGenderSection
                            .transition(transition)
                        
                    default:
                        EmptyView()
                }
            }
            
            //buttons
            VStack {
                Spacer()
                buttonView
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text(alertTitle))
        })
     
    }
}

// MARK: - COMPONENTS
extension OnboardingView {
    
    private var buttonView: some  View {
        Button(onBoardingState == 0 ? "SIGN UP" : onBoardingState == 3 ? "FINISH" : "NEXT", action: {
            onBtnNextClick()
        })
        .font(.headline)
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .foregroundColor(Color.purple)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200,height: 200)
                .foregroundColor(Color.white)
            
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white),
                    alignment: .bottom
                )
            
            Text("This is the   #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques.")
                .fontWeight(.medium)
                .foregroundColor(Color.white)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
            
           TextField("Your name here...",text: $txtName)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
                
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("What's your Age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
            
            Text("\(Int(age))")
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Slider(value: $age,in: 18...50,step: 1)
                .accentColor(.white)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
            
            VStack(alignment: .leading,spacing: 10) {
                Button(action: {
                    gender = .male
                }) {
                    HStack(spacing: 10 ) {
                        
                        Image(systemName: gender == .male ? "circle.fill" : "circle" )
                            .font(.headline)
                            .foregroundColor(Color.white)
                        
                        Text("Male")
                            .font(.headline)
                            .foregroundColor(Color.white)
                    }
                }
                
                Button(action: {
                    gender = .female
                }) {
                    HStack(spacing: 10 ) {
                        
                        Image(systemName: gender == .female ? "circle.fill" : "circle")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        
                        Text("Female")
                            .font(.headline)
                            .foregroundColor(Color.white)
                    }
                }
                
                Button(action: {
                    gender = .nonBinary
                }) {
                    HStack(spacing: 10 ) {
                        
                        Image(systemName: gender == .nonBinary ? "circle.fill" : "circle")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        
                        Text("Non-Binary")
                            .font(.headline)
                            .foregroundColor(Color.white)
                    }
                }
            }
                        
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

// MARK: - FUNCTION
extension OnboardingView {
    func onBtnNextClick() {
        
        switch onBoardingState {
            case 0 :
                break
                
            case 1:
                guard  txtName.count >= 3 else {
                    showAlert(title: "Your name must be at least 3 characters long!")
                    return
                }
                
            case 2:
                break
                
            case 3:
                break
            
            default:
                return
        }
        
        if onBoardingState == 3 {
            signIn()
        }else {
            withAnimation(.spring()) {
                onBoardingState += 1
            }
        }
    }
    
    func signIn() {
        currentUserName = txtName
        currentUserAge = Int(age)
        currentUserGender = gender.rawValue
    
        withAnimation(.spring()) {
            currentUserSinedIn = true
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}

// MARK: - ENUM
enum Gender:String {
    case male = "Male"
    case female = "Female"
    case nonBinary = "Non-Binary"
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}
