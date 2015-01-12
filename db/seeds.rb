Vagrant::Box.create!([
  {name: "coupang/centos-6.4-with-dev-tool", description: "This is Centos 6.4 Vagrant box for coupang service", short_description: "Centos 6.4 for coupang service"}
])
Vagrant::Box::Version.create!([
  {version: "1.0.0", status: "active", description_html: "", description_markdown: "", box_id: 1}
])
Vagrant::Box::Version::Provider.create!([
  {name: "virtualbox", url: "http://192.168.33.24/coupang/centos-6.4-with-dev-tool/version/1/provider/virtualbox.box", version_id: 1}
])
