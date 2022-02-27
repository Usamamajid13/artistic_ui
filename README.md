
# Artistic UI

Artistic UI package lets you create different types of buttons and containers with your choice of functionalities.

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  artistic_ui:
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:artistic_ui/artistic_ui.dart';
```

## Example


<hr>

<table>
<tr>
<td>

```dart
class FancyScreen extends StatelessWidget {  
  const FancyScreen({Key? key}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      body: Center(  
        child: const CustomButton(
          onPressed: () {
            
          },
          text: "UI",
          containerColor: Colors.white,
          padding: 20.0,
          shadowColor: Colors.pinkAccent,
          borderRadius: 30.0,
          textColor: Colors.pink,
          fontSize: 13.0,
        ),
      ),  
    );  
  }  
}
```

</td>
<td>
<img  src="https://user-images.githubusercontent.com/53579386/126896556-911d4778-04cd-49bf-b32a-01a6eb3b0155.jpeg"  alt="">
</td>
</tr>
</table>
There are a number of properties that you can modify:

-height
-width
-text size
-text color
-container color
-container shadow
-container border
-shadow color
