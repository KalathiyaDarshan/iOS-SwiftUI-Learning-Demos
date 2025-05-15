//
//  ContentView.swift
//  SwiftUIForm
//
//  Created by Darshan Kalathiya on 12/05/25.
//

import SwiftUI

struct ContentView: View {
    @State var caseName: String = ""
    @State private var roomName: String = ""
    @State private var caseType: Profile? = nil
    @State private var leader: Profile? = nil
    @State private var compressor1: Profile? = nil
    @State private var compressor2: Profile? = nil
    @State private var compressor3: Profile? = nil
    @State private var scribe: Profile? = nil
    @State private var airway: Profile? = nil
    @State private var scenario: Profile? = nil
    @State private var isCaseTypeOpen: Bool = false
    @State private var isLeaderOpen: Bool = false
    @State private var iscompressor1Open: Bool = false
    @State private var iscompressor2Open: Bool = false
    @State private var iscompressor3Open: Bool = false
    @State private var isAirwayOpen: Bool = false
    @State private var isScenarioOpen: Bool = false
    @State private var isScribeOpen: Bool = false
    @State private var caseTypeFieldBottom: CGFloat = 0
    @State var arrObjProfile: [Profile] = []
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.black
                .ignoresSafeArea()
            
            VStack(alignment: .leading,spacing: 20) {
                Text("Create new case")
                    .font(.system(size: 28, weight: .bold))
                      .foregroundColor(.white)
                
                ScrollView() {
                    VStack(alignment: .leading, spacing: 25) {
                        Text("Case information")
                            .font(.headline)
                            .foregroundColor(.gray)
                        
                        VStack(alignment: .leading, spacing: 25) {
                            FloatingTextField(placeholder: "Case name", text: $caseName)
                            FloatingTextField(placeholder: "Room name (Optional)", text: $roomName)
                        }
                        
                        Text("Team information")
                            .font(.headline)
                            .foregroundColor(.gray)
                            .padding(.top,10)
                        
                        ZStack(alignment: .top) {
                            VStack(alignment: .leading, spacing: 25) {
                               
                                VStack(spacing: 0) {
                                    FloatingButtonField(placeholder: "Case type",isClicked: $isCaseTypeOpen, objProfile: $caseType) { tapped in
                                        isCaseTypeOpen = tapped
                                    }
                                    
                                   if isCaseTypeOpen {
                                        dropDownView(arrObjProfile: $arrObjProfile,selectedProfile: $caseType,buttonClick: $isCaseTypeOpen)
                                    }
                                }
                                
                                VStack(spacing: 0) {
                                    FloatingButtonField(placeholder: "Leader", isClicked: $isLeaderOpen, objProfile: $leader)
                                    
                                    if isLeaderOpen {
                                        dropDownView(arrObjProfile: $arrObjProfile,selectedProfile: $leader,buttonClick: $isLeaderOpen)
                                    }

                                }

                                VStack(spacing: 0) {
                                    FloatingButtonField(placeholder: "Compressor 1", isClicked: $iscompressor1Open, objProfile: $compressor1)
                                    
                                    if iscompressor1Open {
                                        dropDownView(arrObjProfile: $arrObjProfile,selectedProfile: $compressor1,buttonClick: $iscompressor1Open)
                                    }
                                }

                                VStack(spacing: 0) {
                                    FloatingButtonField(placeholder: "Compressor 2", isClicked: $iscompressor2Open, objProfile: $compressor2)
                                    
                                    if iscompressor2Open {
                                        dropDownView(arrObjProfile: $arrObjProfile,selectedProfile: $compressor2,buttonClick: $iscompressor2Open)
                                    }
                                }
                                
                                VStack(spacing: 0) {
                                    FloatingButtonField(placeholder: "Compressor 3", isClicked: $iscompressor3Open, objProfile: $compressor3)
                                    
                                    if iscompressor3Open {
                                        dropDownView(arrObjProfile: $arrObjProfile,selectedProfile: $compressor3,buttonClick: $iscompressor3Open)
                                    }
                                }

                                VStack(spacing: 0) {
                                    FloatingButtonField(placeholder: "Scribe", isClicked: $isScribeOpen, objProfile: $scribe)
                                    
                                    if isScribeOpen {
                                        dropDownView(arrObjProfile: $arrObjProfile,selectedProfile: $scribe,buttonClick: $isScribeOpen)
                                    }
                                }
                                
                                VStack(spacing: 0) {
                                    FloatingButtonField(placeholder: "Airway", isClicked: $isAirwayOpen, objProfile: $airway)
                                    
                                    if isAirwayOpen {
                                        dropDownView(arrObjProfile: $arrObjProfile,selectedProfile: $airway,buttonClick: $isAirwayOpen)
                                    }
                                }
                            }
                            
//                            // Overlay rectangle if isCaseTypeOpen is true
//                            if isCaseTypeOpen {
//                                VStack(alignment: .leading, spacing: 16) {
//                                    Rectangle()
//                                        .fill(Color.gray.opacity(0.6))
//                                        .frame(maxWidth: .infinity)
//                                        .frame(height: 200)
//                                        .cornerRadius(12)
//                                }
//                                .padding(.top, caseTypeFieldBottom) // push it below the "Case type" field (adjust as needed)
//                                .transition(.move(edge: .top))
//                                .zIndex(1) // Ensure it overlays above the main form
//                            }
                        }
                        
                        Text("Scenario information")
                            .font(.headline)
                            .foregroundColor(.gray)
                            .padding(.top,10)
                        
                        
                        VStack(alignment: .leading, spacing: 25) {
                            VStack(spacing: 0) {
                                FloatingButtonField(placeholder: "Scenario", isClicked: $isScenarioOpen, objProfile: $scenario)
                                
                                if isScenarioOpen {
                                    dropDownView(arrObjProfile: $arrObjProfile,selectedProfile: $scenario,buttonClick: $isScenarioOpen)
                                }
                            }
                           
                            Text("Dummy text is text that is used in the publishing industry or by web designers to occupy the space which will later be filled with 'real' content. This is required when, for example, the final text is not yet available. Dummy text is also ")
                                .font(.headline)
                                .foregroundColor(.gray)
                                .padding(.top,10)
                                .padding(.horizontal,20)
                        }
                        
                        HStack(spacing: 0) {
                            Button(action: {
                                print("CANCEL")
                            }) {
                                Text("CANCEL")
                            }
                            .padding()
                            .frame(height: 50)
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius:  25).stroke(Color.gray, lineWidth: 1))
                            
                            Spacer()
                            
                            Button(action: {
                                print("CREATE NEW CASE")
                            }) {
                                Text("CREATE NEW CASE")
                            }
                            .padding()
                            .frame(height: 50)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(25)
                        }
                    }
                    .padding(.horizontal,50)
                    .padding(.vertical,20)
                    .background(Color(.darkGray))
                }
//                .scrollBounceBehavior(.always)
            }
            .padding(.vertical,50)
            .padding(.horizontal,300)
            
        }
        .onAppear() {
            let obj1 = Profile.init(name: "abcde", profileImg: "person.fill", isOnline: true)
            let obj2 = Profile.init(name: "Serenity Russsell", profileImg: "person.fill", isOnline: true)
            let obj3 = Profile.init(name: "Russsell", profileImg: "person.fill", isOnline: true)
            let obj4 = Profile.init(name: "Serenity Russsell2", profileImg: "person.fill", isOnline: true)
            let obj5 = Profile.init(name: "Serenity Russsell3", profileImg: "person.fill", isOnline: false)
            let obj6 = Profile.init(name: "Serenity Russsell4", profileImg: "person.fill", isOnline: true)
            let obj7 = Profile.init(name: "Serenity Russsell5", profileImg: "person.fill", isOnline: false)
            let obj8 = Profile.init(name: "Serenity Russsell6", profileImg: "person.fill", isOnline: true)
            
            arrObjProfile.append(contentsOf: [obj1,obj2,obj3,obj4,obj5,obj6,obj7,obj8])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FloatingLabelContainer<Content: View>: View {
    var placeholder: String
    var isFocused: Bool
    var isFloating: Bool
    var height: CGFloat
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        ZStack(alignment: .leading) {
            // Floating Label
            Text(((isFloating ? "  " : "") + placeholder + (isFloating ? "  " : "")))
                .foregroundColor(.gray)
                .background(Color(.darkGray))
                .padding(.horizontal, isFloating ? 30 : 25)
                .scaleEffect(isFloating ? 0.75 : 1.0, anchor: .leading)
                .offset(y: isFloating ? -height * 0.5 : 0)
                .animation(.easeOut(duration: 0.2), value: isFloating)
            
            // Embedded Field or Button
            content()
                .padding(.horizontal, 25)
                .frame(height: height)
        }
        .background(
            RoundedRectangle(cornerRadius: height / 2)
                .stroke(Color.gray, lineWidth: 1)
        )
    }
}

struct FloatingTextField: View {
    var placeholder: String
    @Binding var text: String
    @State private var height: CGFloat = 50
    @FocusState private var isFocused: Bool
    
    var body: some View {
        FloatingLabelContainer(
            placeholder: placeholder,
            isFocused: isFocused,
            isFloating: isFocused || !text.isEmpty,
            height: height
        ) {
            TextField("", text: $text)
                .focused($isFocused)
                .foregroundColor(.white)
        }
    }
}

struct FloatingButtonField: View {
    var placeholder: String
    var height: CGFloat = 50
    @Binding var isClicked: Bool
    @Binding var objProfile: Profile?
    var onTap: ((Bool) -> Void)? = nil
    
    var body: some View {
        FloatingLabelContainer(
            placeholder: placeholder,
            isFocused: isClicked,
            isFloating: (objProfile != nil) ? true : false,
            height: height
        ) {
            Button(action: {
                isClicked.toggle()
                onTap?(isClicked)
            }) {
                HStack {
                     if let profile = objProfile {
                        teamInfoView(objProfile: profile)
                    }
                    Spacer()
                    Image(systemName: isClicked ? "chevron.up" : "chevron.down")
                }
                .foregroundColor(.gray)
            }
        }
    }
}

struct dropDownView: View {
    
    @Binding var arrObjProfile : [Profile]
    @Binding var selectedProfile: Profile?
    @Binding var buttonClick: Bool
    
    var body: some View {

        ZStack() {
            ScrollView(showsIndicators: false) {
                VStack {
                    ForEach(arrObjProfile.indices, id: \.self) { index in
                        Button(action: {
                            selectedProfile = nil
                            DispatchQueue.main.async {
                                selectedProfile = arrObjProfile[index]
                            }
                            buttonClick = false
                        }, label: {
                            teamInfoView(objProfile: arrObjProfile[index])
                                .frame(maxWidth: .infinity,alignment: .leading)
                                .padding(.horizontal)
                                .padding(.vertical,5)
                        })
                    }
                }
            }
        }
        .frame(maxWidth: .infinity,maxHeight: 200,alignment: .leading)
        .padding()
        .background(Color.secondary)
        .cornerRadius(20)
    }
}

struct teamInfoView: View {
    var objProfile: Profile
    
    var body: some View {
        ZStack {
            HStack(spacing: 15) {
                Image(systemName: objProfile.profileImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
                    .padding(6)
                    .background(Color.pink)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.random(), lineWidth: 3)
                    )
                
                Text(objProfile.name)
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(.white)

                Circle()
                    .fill(objProfile.isOnline ? Color.green : Color.red)
                    .frame(width: 10,height: 10)
                    .cornerRadius(5)
            }
        }
    }
}

struct ViewOffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

extension Color {
    static func random() -> Color {
        Color(
            red: .random(in: 0.3...0.9),
            green: .random(in: 0.3...0.9),
            blue: .random(in: 0.3...0.9)
        )
    }
}

class Profile {
    var name: String
    var profileImage: String
    var isOnline: Bool
    
    init(name: String,profileImg: String,isOnline: Bool) {
        self.name = name
        self.profileImage = profileImg
        self.isOnline = isOnline
    }
}
