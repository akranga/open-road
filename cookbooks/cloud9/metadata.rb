name             "cloud9"
maintainer       "Antons Kranga"
maintainer_email "akranga@gmail.com"
license          "Apache 2.0"
description      "Installs/Configures cloud9"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1"

%w{ ubuntu }.each do |os|
  supports os
end

depends "apt"
depends "nvm"
depends "xml"
depends "git"