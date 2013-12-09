maintainer       "Vasiliy Tolstov"
maintainer_email "v.tolstov@selfip.ru"
license          "Apache 2.0"
description      "Installs individual packages via attribute or data bag metadata."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

supports "ubuntu"
supports "debian"
supports "suse"
supports "arch"

recipe "platform_modules", "Processes a list of *mods* (which is emtpy by default) to be installed."
recipe "platform_modules::data_bag", "Fetches an list of *mods* from a data bag item and sets the `node['platform_packages']['mods']` attribute for processing."