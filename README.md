<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

The purpose of this Flutter package is to draw a full-width (embed in Container to resize) representation of a semi-circle assembly...
The number of dots is up to you, by default 577 as for the French National Assembly.

## Features

You can change the number of seats, the arc of the circle (by default, 170°) and, with the specific type of inputs, you can display individual voters or sectors for group appearance...

## Getting started

Add this in your ```pubspec.yaml``` :
```dart
    dependencies:
    (...)
        hemicycle:
            git: https://github.com/1278real/hemicycle
```

## Usage

Create a ```List<GroupSectors>``` containing every sectors you want to draw.
Then use ```DrawHemicycle``` to get the semi-circle assembly representation. 

```dart
class _HemicycleState extends State<Hemicycle> {
    int numberTest = 0;
    int resteTest = 0;

    List<GroupSectors> hemicycleTest = [
        GroupSectors(numberTest, customVert, description: "BEFORE"),
        GroupSectors(1, customRouge, description: "NEW"),
        GroupSectors(resteTest, customMiddleGrey1278, description: "AFTER")
    ];

    @override
    void initState() {
        numberTest = 1;
        resteTest = 577 - numberTest - 1;

        updateAndRefresh();
        super.initState();
    }
    
    void updateAndRefresh() async {
        Future.delayed(Duration(milliseconds: 100), (() {
            setState(() {
                datasUpdated = true;
            });
        }));
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        body: Column(
            children: <Widget>[
            if (datasUpdated)
                DrawHemicycle(
                    resteTest + numberTest + 1,
                    nbRows: ((resteTest + numberTest + 1) / 50).ceil(),
                    groupSectors: hemicycleTest,
                    withLegend: true,
                    withTitle: true,
                    title: "TEST",
                ),
                TextButton(
                    onPressed: () {
                    setState(() {
                        numberTest += 1;
                        datasUpdated = false;
                    });
                    updateAndRefresh();
                    },
                    child:
                        Text(("PLUS UN... (" + numberTest.toString() + ")"))),
            ]),
        );
    }
}
```

## Additional information

Further infos soon ;-)