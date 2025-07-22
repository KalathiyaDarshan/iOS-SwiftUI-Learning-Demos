//
//  ContentView.swift
//  ViewPdfDownload
//
//  Created by Darshan Kalathiya on 21/07/25.
//

import SwiftUI
import PDFKit

struct ContentView: View {
    var body: some View {
        VStack {

            Text("Team performance")
            
            ScrollView {
                
               ReportContentView()
                
                Button("Download", action: {
                    PDFManager.shared.generatePDF(from: ReportContentView(),pdfName: "Team Performance")
                })
                .foregroundColor(Color.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
                .font(.headline)
            }
            Spacer()
            
        }
        .padding()
        .foregroundColor(Color.white)
        .background(Color.black)
    }
}

struct ReportContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            ForEach(1...25, id: \.self) { _ in
                VStack(spacing: 20) {
                    HStack {
                        Image(systemName: "doc.text.fill")
                            .foregroundColor(Color.blue)
                        
                        Text("Debrief")
                        Spacer()
                        Image(systemName: "xmark")
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Debrief:")
                            .font(.title3)
                        
                        HStack {
                            Text("Team coordination")
                            Spacer()
                            Text("1")
                                .foregroundColor(Color.red)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Communication:")
                            .font(.title3)
                        
                        HStack {
                            Text("Active knowledge sharing")
                            Spacer()
                            Text("2")
                                .foregroundColor(Color.red)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.gray.opacity(0.5))
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
