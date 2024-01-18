class WootingAnalogSdk < Formula
  desc "Native support for Analog Keyboards #WootDev"
  homepage "https://github.com/WootingKb/wooting-analog-sdk"
  on_intel do
    url "https://github.com/WootingKb/wooting-analog-sdk/releases/download/v0.7.4/wooting-analog-sdk-v0.7.4-x86_64-apple-darwin.tar.gz"
    sha256 "f03b45b68681f0d47565536e0e44993db6923106fa07bfe34b8c7d672f6c0c1b"
  end
  on_arm do
    url "https://github.com/WootingKb/wooting-analog-sdk/releases/download/v0.7.4/wooting-analog-sdk-v0.7.4-aarch64-apple-darwin.tar.gz"
    sha256 "dadcf083b84276be87b84266323411c6668d35a55d1e2e566df4e17ff8c31b69"
  end
  license "MPL-2.0"

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
