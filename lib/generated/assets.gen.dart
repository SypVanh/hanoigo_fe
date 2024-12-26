/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/WorkSans-Bold.ttf
  String get workSansBold => 'assets/fonts/WorkSans-Bold.ttf';

  /// File path: assets/fonts/WorkSans-Italic.ttf
  String get workSansItalic => 'assets/fonts/WorkSans-Italic.ttf';

  /// File path: assets/fonts/WorkSans-Regular.ttf
  String get workSansRegular => 'assets/fonts/WorkSans-Regular.ttf';

  /// List of all assets
  List<String> get values => [workSansBold, workSansItalic, workSansRegular];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/buffalo.svg
  SvgGenImage get buffalo => const SvgGenImage('assets/icons/buffalo.svg');

  /// File path: assets/icons/chicken.svg
  SvgGenImage get chicken => const SvgGenImage('assets/icons/chicken.svg');

  /// File path: assets/icons/dragon.svg
  SvgGenImage get dragon => const SvgGenImage('assets/icons/dragon.svg');

  /// File path: assets/icons/goat.svg
  SvgGenImage get goat => const SvgGenImage('assets/icons/goat.svg');

  /// File path: assets/icons/horse.svg
  SvgGenImage get horse => const SvgGenImage('assets/icons/horse.svg');

  /// File path: assets/icons/logo.svg
  SvgGenImage get logo => const SvgGenImage('assets/icons/logo.svg');

  /// File path: assets/icons/maps-arrow-diagonal.svg
  SvgGenImage get mapsArrowDiagonal => const SvgGenImage('assets/icons/maps-arrow-diagonal.svg');

  /// File path: assets/icons/monkey.svg
  SvgGenImage get monkey => const SvgGenImage('assets/icons/monkey.svg');

  /// File path: assets/icons/snake.svg
  SvgGenImage get snake => const SvgGenImage('assets/icons/snake.svg');

  /// List of all assets
  List<SvgGenImage> get values => [buffalo, chicken, dragon, goat, horse, logo, mapsArrowDiagonal, monkey, snake];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bg_curly.png
  AssetGenImage get bgCurly => const AssetGenImage('assets/images/bg_curly.png');

  /// File path: assets/images/den_ngoc_son.png
  AssetGenImage get denNgocSon => const AssetGenImage('assets/images/den_ngoc_son.png');

  /// File path: assets/images/hoang_thanh_thang_long.png
  AssetGenImage get hoangThanhThangLong => const AssetGenImage('assets/images/hoang_thanh_thang_long.png');

  /// File path: assets/images/image.jpg
  AssetGenImage get image => const AssetGenImage('assets/images/image.jpg');

  /// File path: assets/images/kakashi.jpg
  AssetGenImage get kakashi => const AssetGenImage('assets/images/kakashi.jpg');

  /// File path: assets/images/khue_van_cac.png
  AssetGenImage get khueVanCac => const AssetGenImage('assets/images/khue_van_cac.png');

  /// File path: assets/images/lang_chu_tich.png
  AssetGenImage get langChuTich => const AssetGenImage('assets/images/lang_chu_tich.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/naruto.jpg
  AssetGenImage get naruto => const AssetGenImage('assets/images/naruto.jpg');

  /// File path: assets/images/nha_hat_lon.png
  AssetGenImage get nhaHatLon => const AssetGenImage('assets/images/nha_hat_lon.png');

  /// File path: assets/images/obito.jpg
  AssetGenImage get obito => const AssetGenImage('assets/images/obito.jpg');

  /// File path: assets/images/quan_dong_da.png
  AssetGenImage get quanDongDa => const AssetGenImage('assets/images/quan_dong_da.png');

  /// File path: assets/images/quan_hoan_kiem.png
  AssetGenImage get quanHoanKiem => const AssetGenImage('assets/images/quan_hoan_kiem.png');

  /// File path: assets/images/sakura.jpg
  AssetGenImage get sakura => const AssetGenImage('assets/images/sakura.jpg');

  /// File path: assets/images/sasuke.jpg
  AssetGenImage get sasuke => const AssetGenImage('assets/images/sasuke.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        bgCurly,
        denNgocSon,
        hoangThanhThangLong,
        image,
        kakashi,
        khueVanCac,
        langChuTich,
        logo,
        naruto,
        nhaHatLon,
        obito,
        quanDongDa,
        quanHoanKiem,
        sakura,
        sasuke
      ];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
