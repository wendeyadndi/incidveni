   struct ParentView: View {
       @State private var storedValue: Int = 10

       var body: some View {
           ChildView(storedValue: $storedValue)
       }
   }

   struct ChildView: View {
       @Binding var storedValue: Int

       var body: some View {
           Button("Increment Value") {
               storedValue += 1
           }
       }
   }
   