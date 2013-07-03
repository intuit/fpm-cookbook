name             "fpm"
maintainer       "Intuit, Inc."
maintainer_email "kevin_young@intuit.com"
description      "Installs Effin Package Manager"
version          "0.1.1"

depends          "ruby"
depends          "rpm_build"
depends          "build-essential"

%w{ redhat }.each do |os|
  supports os
end
