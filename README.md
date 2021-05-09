# SwiftUI
# Declarative User Interface
## PropertyWrappers:
- PropertyWrappers are tools provided by swift that allows us to encapsulate functionality in a property. They are like the computed properties, but applicable to multiple properties. They are desined to simplify our code. eg @State, @Binding etc.
- PropertyWrapper is just a structure. It must be preceeded by @peopertyWrapper and conatains wrapped value property in it, and an initializer to initialize wrapped value. 

### 1: @State:
- This wrappers stores the value of the property and notifies the system whenever the value changes, so the views are updated to show the updated change.
- @State is designed to store the the state of a single view so we make @State var as private. 

### 2: @Binding:
- It allows two different Views to share the same property value – when it changes in one place it also changes in the other. Both views will observe the change in common variable.

### 3: @Environmant:
- @Environment is specifically there to work with SwiftUI’s own pre-defined keys.
- eg Environment(\.colorScheme) to fetch dark or light mode

### 4: Combine Framework: 
- @ObservableObject, @ObservedObjects and @Published These all are the parts of combine framework.
### @ObservableObject, @ObservedObjects and @Published :
- @ObservableObject is used to bind custom models with views to update views whenerver model changes.
- @ObservedObjects listens everytime an ObservableObject changes.
- @Publish turns any property into publisher which informs the system about changes in the property's value.
