import SwiftUI

struct ToggleView: View {
    @Binding var isOn: Bool
    let id = UUID()

    init(isOn: Binding<Bool>) {
        self._isOn = isOn
        print("ToggleView initialized with id: \(id)")
    }

    var body: some View {
        Toggle("Switch", isOn: $isOn)
            .onAppear {
                print("ToggleView appeared with id: \(id)")
            }
            .onDisappear {
                print("ToggleView disappeared with id: \(id)")
            }
    }
}

struct ContentView: View {
    @State private var switchIsOn = false
//    @ViewBuilder private var textView: some View {
//        TextView()
//    }

    var body: some View {
        VStack {
//            ToggleView(isOn: $switchIsOn)
            Text("The switch is \(switchIsOn ? "on" : "off")")
            TextView()
            Button("Toggle from parent") {
                switchIsOn.toggle()
            }
        }
    }
}

struct TextView: View {
    init() {
        print("TextView initialized")
    }
    var body: some View {
//        VStack {
           Text("HI")
//        }
    }
}
