class WootingAnalogSdk < Formula
  desc "Native support for Analog Keyboards #WootDev"
  homepage "https://github.com/WootingKb/wooting-analog-sdk"
  url "https://github.com/WootingKb/wooting-analog-sdk/releases/download/v0.7.0/wooting-analog-sdk-v0.7.0-x86_64-apple-darwin.tar.gz"
  sha256 "11f9df829a13745a616d42a52e855eac785b15ec9edec66be3e8699cc3f7b812"
  license "MPL-2.0"
  bottle :unneeded

  def install
    lib.install "wrapper/sdk/libwooting_analog_sdk.dylib"
    basepath = (share/"WootingAnalogPlugins")
    basepath.mkpath
    (basepath/"wooting-analog-test-plugin").mkpath
    (basepath/"wooting-analog-plugin").mkpath
    (basepath/"wooting-analog-plugin").install "wrapper/sdk/libwooting_analog_plugin.dylib"
    (basepath/"wooting-analog-test-plugin").install "wrapper/sdk/libwooting_analog_test_plugin.dylib"
  end

  test do
    system "true"
  end
end
