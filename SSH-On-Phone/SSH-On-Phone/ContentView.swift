//
//  ContentView.swift
//  SSH-On-Phone
//
//  Created by Silverhand on 5/27/2022.
//

import SwiftUI


struct ContentView: View
{
  var body: some View
  {
    Text ("Welcome").font(.system(size: 24, weight: .light, design: .serif)).multilineTextAlignment(.center).padding(.all)
    Text("begin your journey by make a new connection or select a exisitig connection from the history").padding(.all).multilineTextAlignment(.center)
      .font(.system(size: 12, weight: .light, design: .serif))
    NavigationView
    {
      VStack
      {
        List
        {
         
          NavigationLink(destination: NewConnectionView()){Text("New connect").padding(.all).font(.system(size: 12, weight: .light, design: .serif))}
          NavigationLink(destination: HistoryConnectionView()){Text("History Connect").padding(.all).font(.system(size: 12, weight: .light, design: .serif))}
          NavigationLink(destination: FileTransferView()){Text("File Transfer").padding(.all).font(.system(size: 12, weight: .light, design: .serif))}
          NavigationLink(destination: ConnectionView()){Text("Connection").padding(.all).font(.system(size: 12, weight: .light, design: .serif))}
          NavigationLink(destination: SettingsView()){Text("Settings").padding(.all).font(.system(size: 12, weight: .light, design: .serif))}
        }
      }
    } .navigationTitle("Welcome")
  }
}

struct NewConnectionView: View
{
  @State var hostAddress = "127.0.0.1"
  @State var hostPort = "22"
  @State var alias = ""
  @State var username = ""
  @State var password = ""
  var body: some View
  {
    HStack
    {
      Form()
      {
        Section(header: Text ("Host Information"))
        {
          TextField("Host Address", text: $hostAddress)
          TextField("Host Port", text: $hostPort)
        }
        Section(header: Text ("Connect Information"))
        {
          TextField("Alias", text: $alias)
          TextField("Username", text: $username)
          TextField("Password", text: $password)
        }
        Button("Connect")
        {
          connectToHost(Address: hostAddress, Port: hostPort, Tag: alias, Name: username, Pass: password)
        }
      }
    } .navigationTitle("New Connection")
  }
}

struct HistoryConnectionView: View
{
  var body: some View
  {
    Text ("History connection here") .navigationTitle("History Connection")
  }
}

struct FileTransferView: View
{
  var body: some View
  {
    Text("File Manager").padding(.all).position(x: 110, y: 50).font(.system(size: 25, weight: .light, design: .serif))
  }
}

struct ConnectionView: View
{
  @State var text = "<html><body><h1>Hello World</h1></body></html>"
  var body: some View
  {
    Text ("Make a terminal here")
  }
}

struct SettingsView: View
{
  var body: some View
  {
    Text ("Here is the settings menu")
  }
}

func connectToHost(Address: String, Port: String, Tag: String, Name: String, Pass: String)
{
  print(NSHomeDirectory())
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
