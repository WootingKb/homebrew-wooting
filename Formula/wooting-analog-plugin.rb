# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class WootingAnalogPlugin < Formula
  desc "Wooting's plugin for the Wooting Analog SDK to support Wooting keyboards!"
  homepage "https://github.com/WootingKb/wooting-analog-plugin"
  url "https://github.com/WootingKb/wooting-analog-plugin/releases/download/v0.4.0/wooting-analog-plugin-v0.4.0-x86_64-apple-darwin.tar.gz"
  sha256 "2e6e2fa43906f86b95e1c6d8d9feb84fbc746c09ac504e7ffec649ec9cbc821b"
  license "MPL-2.0"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
    #                      "--disable-dependency-tracking",
    #                      "--disable-silent-rules",
    #                      "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    (share/"WootingAnalogPlugins").mkpath
    (share/"WootingAnalogPlugins/wooting-analog-plugin").mkpath
    (share/"WootingAnalogPlugins/wooting-analog-plugin").install "libwooting_analog_plugin.dylib"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test wooting-analog-plugin`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
