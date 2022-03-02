
# Artistic UI

Artistic UI package lets you create different types of buttons and containers with your choice of functionalities. You can create one text container using CustomButton and 2 Text widgets button using CustomButtonDoubleText...

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
class ArtisticScreen extends StatelessWidget {  
  const ArtisticScreen({Key? key}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomButton(
              onPressed: () {},
              text: "This is your text",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: CustomButtonDoubleText(
              onPressed: () {},
              containerColor: Colors.pinkAccent,
              lowerText: "Lower Text",
              upperTextColor: Colors.white,
              upperText: "Upper Text",
            ),
          ),
        ],
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

- Height
- Width
- Text size
- Text color
- Container color
- Container shadow
- Container border
- Shadow color
- Text weight
- Space between widget and many more