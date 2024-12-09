import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'countries.dart';

class PickerDialogStyle {
  final Color? backgroundColor;

  final TextStyle? countryCodeStyle;

  final TextStyle? countryNameStyle;

  final Widget? listTileDivider;

  final EdgeInsets? listTilePadding;

  final EdgeInsets? padding;

  final Color? searchFieldCursorColor;

  final InputDecoration? searchFieldInputDecoration;

  final EdgeInsets? searchFieldPadding;

  final double? width;

  PickerDialogStyle({
    this.backgroundColor,
    this.countryCodeStyle,
    this.countryNameStyle,
    this.listTileDivider,
    this.listTilePadding,
    this.padding,
    this.searchFieldCursorColor,
    this.searchFieldInputDecoration,
    this.searchFieldPadding,
    this.width,
  });
}

class CountryPickerDialog extends StatefulWidget {
  final List<Country> countryList;
  final Country selectedCountry;
  final ValueChanged<Country> onCountryChanged;
  final String searchText;
  final List<Country> filteredCountries;
  final PickerDialogStyle? style;
  final String languageCode;

  CountryPickerDialog({
    Key? key,
    required this.searchText,
    required this.languageCode,
    required this.countryList,
    required this.onCountryChanged,
    required this.selectedCountry,
    required this.filteredCountries,
    this.style,
  }) : super(key: key);

  @override
  _CountryPickerDialogState createState() => _CountryPickerDialogState();
}

class _CountryPickerDialogState extends State<CountryPickerDialog> {
  late List<Country> _filteredCountries;
  late Country _selectedCountry;

  @override
  void initState() {
    _selectedCountry = widget.selectedCountry;
    _filteredCountries = widget.filteredCountries.toList()
      ..sort(
        (a, b) => a
            .localizedName(widget.languageCode)
            .compareTo(b.localizedName(widget.languageCode)),
      );

    super.initState();
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(getHorizontalSize(32)),
              topRight: Radius.circular(getHorizontalSize(32)))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // Padding(
          //   padding:getPadding(top: 0),
          //   child: TextField(
          //     cursorColor: widget.style?.searchFieldCursorColor,
          //     decoration: widget.style?.searchFieldInputDecoration ??
          //         InputDecoration(
          //           suffixIcon: Icon(Icons.search),
          //           labelText: widget.searchText,
          //         ),
          //     onChanged: (value) {
          //       _filteredCountries = widget.countryList.stringSearch(value)
          //         ..sort(
          //               (a, b) => a
          //               .localizedName(widget.languageCode)
          //               .compareTo(b.localizedName(widget.languageCode)),
          //         );
          //       if (this.mounted) setState(() {});
          //     },
          //   ),
          // ),
          Padding(
            padding: getPadding(top: 16,bottom: 16),
            child: Text("Select Country",
                style: CustomTextStyles.txtSFProTextSemibold20),
          ),
          Divider(color: appTheme.gray20),
          SizedBox(height: getVerticalSize(0)),
          Container(
            height: getSize(696),
            child: ListView.builder(
                padding: getPadding(left: 16, right: 16),
                shrinkWrap: true,
                itemCount: _filteredCountries.length,
                itemBuilder: (ctx, index) => GestureDetector(
                      onTap: () {
                        _selectedCountry = _filteredCountries[index];
                        widget.onCountryChanged(_selectedCountry);
                        setState(() {
                          currentIndex = index;
                        });
                        Navigator.of(context).pop();
                      },
                      child: Padding(
                        padding: getPadding(top: 4, bottom: 4),
                        child: Container(
                          decoration:  _selectedCountry==_filteredCountries[index]?BoxDecoration(
                            borderRadius: BorderRadius.circular(getHorizontalSize(16),),
                            color: theme.colorScheme.primary.withOpacity(0.14),
                          ):BoxDecoration(),
                          child: Padding(
                            padding: getPadding(all: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      _filteredCountries[index]
                                          .localizedName(widget.languageCode),
                                      style: CustomTextStyles.txtHeadline18Width400,
                                    ),
                                    Text(
                                        ' (+${_filteredCountries[index].dialCode})',
                                        style:
                                        CustomTextStyles.txtHeadline18Width400gray),
                                  ],
                                ),
                                _selectedCountry == _filteredCountries[index]
                                    ? CustomImageView(
                                        svgPath: ImageConstant.imgTickIcon,
                                      )
                                    : SizedBox()
                              ],
                            ),
                          ),
                        ),
                      ),
                    )

                //     Column(
                //   children: <Widget>[
                //     ListTile(
                //       // leading:
                //       // kIsWeb
                //       //     ? Image.asset(
                //       //   'assets/flags/${_filteredCountries[index].code.toLowerCase()}.png',
                //       //   package: 'intl_phone_field',
                //       //   width: 32,
                //       // )
                //       //     : Text(
                //       //   _filteredCountries[index].flag,
                //       //   style: TextStyle(fontSize: 18),
                //       // ),
                //       // contentPadding: widget.style?.listTilePadding,
                //       title: Text(
                //         _filteredCountries[index]
                //             .localizedName(widget.languageCode),
                //         style: widget.style?.countryNameStyle ??
                //             TextStyle(fontWeight: FontWeight.w700),
                //       ),
                //       trailing: Text(
                //         '+${_filteredCountries[index].dialCode}',
                //         style: widget.style?.countryCodeStyle ??
                //             TextStyle(fontWeight: FontWeight.w700),
                //       ),
                //       onTap: () {
                //         _selectedCountry = _filteredCountries[index];
                //         widget.onCountryChanged(_selectedCountry);
                //         Navigator.of(context).pop();
                //       },
                //     ),
                //     widget.style?.listTileDivider ?? Divider(thickness: 1),
                //   ],
                // ),
                ),
          ),
        ],
      ),
    );
  }
}
