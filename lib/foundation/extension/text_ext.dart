import 'package:flutter/material.dart';

extension TextExtension on Text {
  Text setKey(Key key) => copyWith(key: key);

  Text backgroundColor(Color color) => copyWith(style: TextStyle(backgroundColor: color));

  Text uppercase() => copyWith(data: data?.toUpperCase());

  Text lowercase() => copyWith(data: data?.toLowerCase());

  Text setFontSize(double fontSize) => copyWith(style: TextStyle(fontSize: fontSize));

  Text italic() => copyWith(style: const TextStyle(fontStyle: FontStyle.italic));

  Text normal() => copyWith(style: const TextStyle(fontStyle: FontStyle.normal));

  Text fontStyle(FontStyle fontStyle) => copyWith(style: TextStyle(fontStyle: fontStyle));

  Text letterSpacing(double letterSpacing) => copyWith(style: TextStyle(letterSpacing: letterSpacing));

  Text wordSpacing(double wordSpacing) => copyWith(style: TextStyle(wordSpacing: wordSpacing));

  Text alphabetic() => copyWith(style: const TextStyle(textBaseline: TextBaseline.alphabetic));

  Text ideographic() => copyWith(style: const TextStyle(textBaseline: TextBaseline.ideographic));

  Text textBaseline(TextBaseline textBaseline) => copyWith(style: TextStyle(textBaseline: textBaseline));

  /// The height of this text span, as a multiple of the font size.
  Text height(double height) => copyWith(style: TextStyle(height: height));

  Text foreground(Paint foreground) => copyWith(style: TextStyle(foreground: foreground));

  Text background(Paint background) => copyWith(style: TextStyle(background: background));

  Text underline() => copyWith(style: const TextStyle(decoration: TextDecoration.underline));

  Text lineThrough() => copyWith(style: const TextStyle(decoration: TextDecoration.lineThrough));

  Text overline() => copyWith(style: const TextStyle(decoration: TextDecoration.overline));

  Text decoration(TextDecoration decoration) => copyWith(style: TextStyle(decoration: decoration));

  Text decorationColor(Color decorationColor) => copyWith(style: TextStyle(decorationColor: decorationColor));

  Text decorationStyle(TextDecorationStyle decorationStyle) =>
      copyWith(style: TextStyle(decorationStyle: decorationStyle));

  Text decorationThickness(double decorationThickness) =>
      copyWith(style: TextStyle(decorationThickness: decorationThickness));

  Text debugLabel(String debugLabel) => copyWith(style: TextStyle(debugLabel: debugLabel));

  Text strutStyle(StrutStyle strutStyle) => copyWith(strutStyle: strutStyle);

  Text left() => copyWith(textAlign: TextAlign.left);

  Text right() => copyWith(textAlign: TextAlign.right);

  Text center() => copyWith(textAlign: TextAlign.center);

  Text justify() => copyWith(textAlign: TextAlign.justify);

  Text start() => copyWith(textAlign: TextAlign.start);

  Text end() => copyWith(textAlign: TextAlign.end);

  Text textAlign(TextAlign textAlign) => copyWith(textAlign: textAlign);

  Text rtl() => copyWith(textDirection: TextDirection.rtl);

  Text ltr() => copyWith(textDirection: TextDirection.ltr);

  Text textDirection(TextDirection textDirection) => copyWith(textDirection: textDirection);

  Text locale(Locale locale) => copyWith(locale: locale);

  Text setSoftWrap(bool softWrap) => copyWith(softWrap: softWrap);

  Text visible() => copyWith(overflow: TextOverflow.visible);

  Text clip() => copyWith(overflow: TextOverflow.clip);

  Text fade() => copyWith(overflow: TextOverflow.fade);

  Text ellipsis([int? maxLines = 1]) => copyWith(overflow: TextOverflow.ellipsis, maxLines: maxLines);

  Text textScaler(TextScaler textScaler) => copyWith(textScaler: textScaler);

  Text semanticsLabel(String semanticsLabel) => copyWith(semanticsLabel: semanticsLabel);

  Text longestLine() => copyWith(textWidthBasis: TextWidthBasis.longestLine);

  Text parent() => copyWith(textWidthBasis: TextWidthBasis.parent);

  Text textWidthBasis(TextWidthBasis textWidthBasis) => copyWith(textWidthBasis: textWidthBasis);

  Text fontFamily(String fontFamily) => copyWith(style: TextStyle(fontFamily: fontFamily));

  Text style(TextStyle style) => copyWith(style: style);

  Expanded expanded() => Expanded(child: copyWith());

  Opacity opacity(double opacity) => Opacity(opacity: opacity, child: copyWith());

  Padding padding(EdgeInsetsGeometry padding) => Padding(padding: padding, child: copyWith());

  Text copyWith({
    Key? key,
    String? data,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection = TextDirection.ltr,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    TextScaler? textScaler,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextStyle? style,
  }) {
    return Text(
      data ?? this.data ?? '',
      key: key ?? this.key,
      strutStyle: strutStyle ?? this.strutStyle,
      textAlign: textAlign ?? this.textAlign,
      textDirection: textDirection ?? this.textDirection,
      locale: locale ?? this.locale,
      softWrap: softWrap ?? this.softWrap,
      overflow: overflow ?? this.overflow,
      textScaler: textScaler ?? this.textScaler,
      maxLines: maxLines ?? this.maxLines,
      semanticsLabel: semanticsLabel ?? this.semanticsLabel,
      textWidthBasis: textWidthBasis ?? this.textWidthBasis,
      style: style != null ? this.style?.merge(style) ?? style : this.style,
    );
  }
}

extension TextFontWeightExtension on Text {
  Text setFontWeight(FontWeight fontWeight) => copyWith(style: TextStyle(fontWeight: fontWeight));
}

extension TextColorExtension on Text {
  Text color(Color color) => copyWith(style: TextStyle(color: color));
}

extension FontExtension on Text {
  Text fontSize(double fontSize) {
    return setFontSize(fontSize);
  }

  Text fontWeight(int weight) {
    switch (weight) {
      case 100:
        return setFontWeight(FontWeight.w100);
      case 200:
        return setFontWeight(FontWeight.w200);
      case 300:
        return setFontWeight(FontWeight.w300);
      case 400:
        return setFontWeight(FontWeight.w400);
      case 500:
        return setFontWeight(FontWeight.w500);
      case 600:
        return setFontWeight(FontWeight.w600);
      case 700:
        return setFontWeight(FontWeight.w700);
      case 800:
        return setFontWeight(FontWeight.w800);
      case 900:
        return setFontWeight(FontWeight.w900);
      default:
        return setFontWeight(FontWeight.normal);
    }
  }
}
