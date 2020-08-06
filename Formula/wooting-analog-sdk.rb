# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class WootingAnalogSdk < Formula
  desc "Native support for Analog Keyboards #WootDev"
  homepage "https://github.com/WootingKb/wooting-analog-sdk"
  url "https://github.com/WootingKb/wooting-analog-sdk/releases/download/v0.5.0/wooting-analog-sdk-v0.5.0-x86_64-apple-darwin.tar.gz"
  sha256 "a0cd00e2687059e1cbd64b449f1ace893cfcd6e3a9e87a3ddb299463e87c5806"
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
    (share/"WootingAnalogPlugins/wooting-analog-plugin").mkpath
    (share/"WootingAnalogPlugins/wooting-analog-plugin").install "wrapper/sdk/libwooting_analog_plugin.dylib"
    
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
