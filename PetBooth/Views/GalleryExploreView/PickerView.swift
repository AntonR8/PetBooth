//
//  PickerView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 03.04.2024.
//

import SwiftUI


// Расширение для изменения высоты segmented Picker
extension UISegmentedControl {
    override open func didMoveToSuperview() {
        super.didMoveToSuperview()
        self.setContentHuggingPriority(.defaultLow, for: .vertical)
    }
}


struct PickerView: View {
    @Binding var selection: Int

    var body: some View {
        Picker("Pick", selection: $selection) {
            Text("My albums").tag(1)
            Text("Explore").tag(2)
        }
        .pickerStyle(.segmented)
        .foregroundColor(Color.orange)
        .onAppear {
            UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.red], for: .selected)
            UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.gray], for: .normal)
        }
        .frame(height: 58)
        .padding(.horizontal)
    }
}

#Preview {
    PickerView(selection: .constant(1))
}
