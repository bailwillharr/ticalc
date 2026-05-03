# Maintainer: Bailey Harrison <baileyharrison04(at)outlook(dot)com>

_pkgbase=ticalc
pkgname="ticalc-dkms"
pkgver=0.1
pkgrel=1
pkgdesc="USB TI-84 Plus CE calculator driver"
arch=('x86_64')
url="https://example.org/"
license=('GPL-2.0-only')
depends=('dkms')
source=('ticalc.c' 'Makefile' 'dkms.conf')
sha256sums=('46c280cb83b1808055c840d4cdc6d638eb25856035ed6dcda20da76f9f707840'
            '23f2781fbde358d421027ad12bcf3bb3ce5d9218f325d2c3bed14b2030087ab1'
            '41ec92601436fb3442916ae5e71badcef5607bca8e761d56876b14d8bab26b54')

package() {
  # Copy dkms.conf
  install -Dm644 dkms.conf "${pkgdir}"/usr/src/${_pkgbase}-${pkgver}/dkms.conf

  # Set name and version
  sed -e "s/@_PKGBASE@/${_pkgbase}/" \
      -e "s/@PKGVER@/${pkgver}/" \
      -i "${pkgdir}"/usr/src/${_pkgbase}-${pkgver}/dkms.conf

  # Copy sources (including Makefile)
  cp -r ticalc.c Makefile "${pkgdir}"/usr/src/${_pkgbase}-${pkgver}/
}
