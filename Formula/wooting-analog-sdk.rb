# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class WootingAnalogSdk < Formula
  desc "Native support for Analog Keyboards #WootDev"
  homepage "https://github.com/WootingKb/wooting-analog-sdk"
  url "https://github.com/WootingKb/wooting-analog-sdk/releases/download/v0.4.0/wooting-analog-sdk-v0.4.0-x86_64-apple-darwin.tar.gz"
  sha256 "5074c2d1211b38b913d20038a4b96f81f56940a3e6939c2d528d6d5a204992e6"
  license "MPL-2.0"
  bottle :unneeded
  
  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
    #                      "--disable-dependency-tracking",
    #                      "--disable-silent-rules",
    #                      "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    
    lib.install "wrapper/sdk/libwooting_analog_sdk.dylib"
    
    (share/"WootingAnalogPlugins").mkpath
    (share/"WootingAnalogPlugins/wooting-analog-test-plugin").mkpath
    
    (share/"WootingAnalogPlugins/wooting-analog-test-plugin").install "wrapper/sdk/libwooting_analog_test_plugin.dylib"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test wooting-analog-sdk`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
