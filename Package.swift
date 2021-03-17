// swift-tools-version:5.2

import PackageDescription

let package = Package(
  name: "CFFmpeg",
  products: [
    .library(name: "CAVFormat", targets: [
      "avformat",
    ]),
    .library(name: "CAVCodec", targets: [
      "avcodec",
    ]),
    .library(name: "CAVDevice", targets: [
      "avdevice",
    ]),
    .library(name: "CAVFilter", targets: [
      "avfilter",
    ]),
    .library(name: "CAVUtil", targets: [
      "avutil",
    ]),
    .library(name: "CSWResample", targets: [
      "swresample",
    ]),
    .library(name: "CSWScale", targets: [
      "swscale",
    ]),
    .library(name: "CRTMP", targets: [
      "rtmp",
    ]),
  ],
  dependencies: [
  ],
  targets: [
    .target(name: "FFmpeg"),
    .systemLibrary(name: "avformat", pkgConfig: "libavformat"),
    .systemLibrary(name: "avcodec", pkgConfig: "libavcodec"),
    .systemLibrary(name: "avdevice", pkgConfig: "libavdevice"),
    .systemLibrary(name: "avfilter", pkgConfig: "libfilter"),
    .systemLibrary(name: "avutil", pkgConfig: "libavutil"),
    .systemLibrary(name: "swresample", pkgConfig: "libswresample"),
    .systemLibrary(name: "swscale", pkgConfig: "libswscale"),
    .systemLibrary(name: "rtmp", pkgConfig: "librtmp"),
  ]
)
