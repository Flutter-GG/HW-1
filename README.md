
# Home Work 1

The Weeknd project, which provides for the design of four facades in consistency and as required


![Logo](https://docs.flutter.dev/assets/images/flutter-logo-sharing.png)


## Features

- Navigation page
- Filters
- Fullscreen mode


## widgets

- Image

- AppBar
- TextField
- Row
- Column
- Icon
- Button
- Expanded
- Container
- SizedBox
- Text 


## Color Reference

| Color             | Hex                                                                |
| ----------------- | ------------------------------------------------------------------ |
| Background color | ![#70b9be](https://via.placeholder.com/10/0a192f?text=+) #70b9be |
| Buttons color | ![#042628](https://via.placeholder.com/10/f8f8f8?text=+) #042628 |




## Git And Github


Git status for Check on the status of the files
```bash
git status
```

Git clone for clone the project fork 

```bash
git clone https://////
```

Git add for save changes folders 

```bash
git add .
```

Git commit for save changes and tybe massege 

```bash
git coomit -m "commit massege"
```
Git branch for save all commits in new branch 

```branch 
git checkout -b branch name
```

Git push for send all changes to the Github 

```bash
git push --set-upstream origin branch Name
```

## coumpunent/Examples

```dart
class imageContainer extends StatelessWidget {
  const imageContainer({
    super.key,
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.shadowColor,
    required this.opacity,
    required this.paddingImage,
    required this.widthImage,
    required this.heightImage,
    required this.borderRadiusImage,
    required this.titleFood,
    required this.containerColor,
    required this.assetsName,
  });
  final double width;
  final double height;
  final double borderRadius;
  final Color shadowColor;
  final double opacity;
  final double paddingImage;
  final double widthImage;
  final double heightImage;
  final double borderRadiusImage;
  final String titleFood;
  final Color containerColor;
  final String assetsName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: containerColor,
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(opacity),
            spreadRadius: 0.1,
            blurRadius: 7,
            offset: Offset(1, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.all(paddingImage),
          child: Container(
            width: widthImage,
            height: heightImage,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadiusImage),
                image: DecorationImage(
                    image: AssetImage(assetsName), fit: BoxFit.cover)),
          ),
        ),
        Text(
          titleFood,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
```

