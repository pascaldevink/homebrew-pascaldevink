class GitSmb < Formula
  homepage "https://github.com/pascaldevink/git-smb"
  url "https://github.com/pascaldevink/git-smb/archive/1.3.tar.gz"
  sha256 "eeb27475f0de2f3a8941a4da347040e8800a76d48f8ebc21395e0b033c8aa97d"

  head "https://github.com/pascaldevink/git-smb.git", :branch => "master"

  depends_on :python if MacOS.version <= :snow_leopard
  depends_on "git" => :optional

  def install
    bin.mkpath
    bin.install "bin/git-smb"
    share.install "share/data"
    mkdir_p etc/"git-smb"
    mv "etc/config.json", etc/"git-smb/config.json"
  end

  test do
    system bin/git-smb
  end
end
