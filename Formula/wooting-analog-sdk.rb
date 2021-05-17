class WootingAnalogSdk < Formula
  desc "Native support for Analog Keyboards #WootDev"
  homepage "https://github.com/WootingKb/wooting-analog-sdk"
  url "https://github.com/WootingKb/wooting-analog-sdk/releases/download/v0.6.0/wooting-analog-sdk-v0.6.0-x86_64-apple-darwin.tar.gz"
  sha256 "3014ab8dd50c5ef20927d1de6f75289bfeaae450e2f617003b2a6b6d67dfc360"
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
