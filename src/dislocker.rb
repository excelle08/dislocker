#
# this brew file *must* be called 'dislocker.rb' to match the Formula
#

require 'formula'

class Dislocker < Formula
    homepage 'https://github.com/Aorimn/dislocker'
    url 'https://github.com/excelle08/dislocker/archive/refs/tags/dev2.zip'
    sha256 'fd1a4bc57e5a55110d111b9d8a20057be64e5be13ce82b6b5cf67ad26f3177a5'
    version '0.7.2'

    depends_on 'mbedtls@2'
    depends_on 'cmake'
#    This dependency is separately installed, as a cask
#    depends_on :osxfuse

    def install
        system 'cmake', *std_cmake_args
        system 'make'
        system 'make', 'install'
    end
end
