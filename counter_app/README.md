# Counter App

As simple as it gets really. This example goes over a very basic two button app that manages an `int count` in it's state. The App uses a `BlocConsumer` to listen for state changes and rebuild the widget accordingly.

## Getting Started

Read through the code and try understand what's happening. Main points of interest:
 - `main.dart` - Creates the Provider for the Cubit globally
 - `counter_cubit/` - The main filling in the app. This handles the state and provides functions for updating the state.
 - `counter_page.dart` - The main app view. Reads the state from the context and calls functions depending on user interaction.
