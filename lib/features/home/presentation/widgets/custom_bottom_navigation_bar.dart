import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    Key? key,
    required this.items,
    this.backgroundColor = const Color(0XFF003051),
    this.itemBackgroundColor = const Color(0XFF003051),
    this.itemOutlineColor = const Color(0XFFFFFFFF),
    this.selectedItemColor = const Color(0XFFFFFFFF),
    this.unselectedItemColor = const Color(0XFFFFFFFF),
    required this.onTap,
    this.initTap = 0,
    required this.controller,
  })  : assert(items.length > 1 && items.length < 5),
        super(key: key);
  final CustomBottomNavigationBarController controller;
  final List<CustomBottomNavigationBarItem> items;
  final Color backgroundColor;
  final Color itemBackgroundColor;
  final Color itemOutlineColor;
  final Color selectedItemColor;
  final Color unselectedItemColor;
  final ValueChanged<int> onTap;
  final int initTap;

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  void initState() {
    _currentIndex = widget.initTap;
    widget.controller.addListener(_onTapChange);
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTapChange);
    super.dispose();
  }

  void _onTapChange() {
    setState(() {
      _currentIndex = widget.controller.currentTapIndex;
    });
  }

  void _changeCurrentIndex(int index) {
    widget.onTap(index);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 70.0,
          color: widget.backgroundColor,
        ),
        SizedBox(
          height: 90.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: widget.items.map(
              (item) {
                int index = widget.items.indexOf(item);
                return _CustomBottomNavigationBarItemTile(
                  item,
                  widget.selectedItemColor,
                  widget.unselectedItemColor,
                  widget.itemOutlineColor,
                  widget.backgroundColor,
                  widget.itemBackgroundColor,
                  index,
                  _changeCurrentIndex,
                  _currentIndex,
                );
              },
            ).toList(),
          ),
        )
      ],
    );
  }
}

class _CustomBottomNavigationBarItemTile extends StatefulWidget {
  final CustomBottomNavigationBarItem item;
  final Color selectedItemColor;
  final Color unselectedItemColor;
  final Color itemOutlineColor;
  final Color backgroundColor;
  final Color itemBackgroundColor;

  final int index;
  final ValueChanged<int> onChanged;

  final int currentIndex;

  const _CustomBottomNavigationBarItemTile(
      this.item,
      this.selectedItemColor,
      this.unselectedItemColor,
      this.itemOutlineColor,
      this.backgroundColor,
      this.itemBackgroundColor,
      this.index,
      this.onChanged,
      this.currentIndex);

  @override
  _CustomBottomNavigationBarItemTileState createState() =>
      _CustomBottomNavigationBarItemTileState();
}

class _CustomBottomNavigationBarItemTileState
    extends State<_CustomBottomNavigationBarItemTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: selectItem,
      child: SizedBox(
        height: 120.0,
        width: 70.0,
        child: Stack(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 4.0),
              child: AnimatedAlign(
                curve: Curves.easeOutCirc,
                duration: const Duration(milliseconds: 300),
                alignment: widget.currentIndex == widget.index
                    ? Alignment.topCenter
                    : Alignment.bottomCenter,
                child: AnimatedContainer(
                  padding: const EdgeInsets.all(5.0),
                  curve: Curves.easeOut,
                  duration: const Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                    color: widget.currentIndex == widget.index
                        ? widget.itemBackgroundColor
                        : widget.backgroundColor,
                    border: Border.all(
                      color: widget.currentIndex == widget.index
                          ? widget.itemOutlineColor
                          : widget.itemOutlineColor.withOpacity(0.0),
                      width: 3.5,
                    ),
                  ),
                  child: ImageIcon(
                    AssetImage(widget.item.assetsIconPath),
                    size: 45,
                    color: widget.currentIndex == widget.index
                        ? widget.selectedItemColor
                        : widget.unselectedItemColor,
                  ),
                ),
              ),
            ),
            if (widget.item.title != null)
              AnimatedOpacity(
                opacity: widget.currentIndex == widget.index ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 150),
                curve: Curves.easeInOut,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12.0),
                    width: 70.0,
                    child: Text(
                      widget.item.title!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  void selectItem() {
    widget.onChanged(widget.index);
  }
}

class CustomBottomNavigationBarItem {
  CustomBottomNavigationBarItem({
    required this.assetsIconPath,
    this.title,
    this.titleTextColor = const Color(0XFFFFFFFF),
  });
  final String assetsIconPath;

  final String? title;
  final Color titleTextColor;
}

class CustomBottomNavigationBarController extends ChangeNotifier {
  var currentTapIndex = 0;
  void moveToIndex(int index) {
    currentTapIndex = index;
    notifyListeners();
  }
}
