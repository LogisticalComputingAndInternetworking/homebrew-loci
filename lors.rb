require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Lors < Formula
  homepage "http://loci.eecs.utk.edu"
  url "https://github.com/LogisticalComputingAndInternetworking/LoRS/archive/0.82.8.tar.gz"
  sha1 "f460a5a205d82ec3a01fd8c8348d4a9da9e91f05"

  # dependencies
  depends_on "popt"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    system "./configure",
           "--prefix=#{prefix}",
           "--build=x86_64-darwin",
           "--with-popt=/usr/local"

    # system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
