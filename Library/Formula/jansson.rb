require 'formula'

class Jansson < Formula
  homepage 'http://www.digip.org/jansson/'
  url 'http://www.digip.org/jansson/releases/jansson-2.7.tar.gz'
  sha1 '7d8686d84fd46c7c28d70bf2d5e8961bc002845e'

  bottle do
    cellar :any
    sha1 "7c9087f9ce0f65276339832bbbf7f6f813eed03d" => :yosemite
    sha1 "5c0224602ecb036cdc1e636cff2895094fafac04" => :mavericks
    sha1 "876f6358e0277ddeec6d36c647723452ccf3adfa" => :mountain_lion
  end

  option :universal

  def install
    ENV.universal_binary if build.universal?
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
