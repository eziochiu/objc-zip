Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.name         = "objc-zip"
  s.version      = "1.0.0"
  s.summary      = "An object-oriented friendly wrapper library for ZLib and MiniZip, in Objective-C for iOS and OS X"

  s.description  = <<-DESC
                   Objective-Zip is a small Objective-C library that wraps ZLib and
                   MiniZip in an object-oriented friendly way. It supports:

                   * Zipping and unzipping of common zip file formats.
                   * Multi-GB zip files thanks to 64-bit APIs, even with limited memory available.
                   * Per-file compression level and encryption.

                   Objective-Zip includes sources of latest versions of ZLib and MiniZip.
                   DESC

  s.homepage     = "https://github.com/eziochiu/objc-zip.git"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.license      = { :type => "MIT License", :file => "LICENSE.md" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.author             = { "Ezio Chiu" => "eziochiuchina@hotmail.com" }
  s.social_media_url   = "https://twitter.com/@e0mher"


  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.7"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.source       = { :git => "https://github.com/eziochiu/objc-zip.git",
                     :tag => s.version.to_s }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.source_files  = "Objective-Zip/**/*.{h,m}", "MiniZip/**/*.{h,c}", "ZLib/**/*.{h,c}"


  # ――― Publich Headers ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.public_header_files = ["Objective-Zip/OZZipFile.h", "Objective-Zip/OZZipFile+Standard.h", "Objective-Zip/OZZipFile+NSError.h",
                           "Objective-Zip/OZZipFileMode.h", "Objective-Zip/OZZipCompressionLevel.h", "Objective-Zip/OZZipException.h",
                           "Objective-Zip/OZZipWriteStream.h", "Objective-Zip/OZZipWriteStream+Standard.h",
                           "Objective-Zip/OZZipWriteStream+NSError.h", "Objective-Zip/OZZipReadStream.h",
                           "Objective-Zip/OZZipReadStream+Standard.h", "Objective-Zip/OZZipReadStream+NSError.h",
                           "Objective-Zip/OZFileInZipInfo.h", "Objective-Zip/Objective-Zip.h", "Objective-Zip/Objective-Zip+NSError.h",
                           "Objective-Zip/NSDate+DOSDate.h", "Objective-Zip/NSData+CRC32.h"]


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.requires_arc = true
  s.xcconfig = { "OTHER_LDFLAGS" => "-ObjC",
                 "GCC_WARN_UNUSED_FUNCTION" => "NO" }

end