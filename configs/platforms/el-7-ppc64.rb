platform "el-7-ppc64" do |plat|
  plat.servicedir "/usr/lib/systemd/system"
  plat.defaultdir "/etc/sysconfig"
  plat.servicetype "systemd"

  plat.add_build_repository "http://nims.desy.de/extra/pl-build-tools/pl-build-tools-ppc64.repo"
  plat.add_build_repository "http://nims.desy.de/extra/pl-build-tools/pl-build-tools-x86_64.repo"
  plat.provision_with "yum install --assumeyes autoconf automake createrepo rsync gcc make rpmdevtools rpm-libs yum-utils rpm-sign"
  plat.install_build_dependencies_with "yum install --assumeyes"
  plat.cross_compiled true
  plat.vmpooler_template "redhat-7-x86_64"
end
