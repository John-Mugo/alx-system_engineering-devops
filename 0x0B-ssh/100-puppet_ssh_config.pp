#This puppet mainfest configures using private key ~/.ssh/school
class ssh_config {
  file { 'alx-system_engineering-devops/0x0B-ssh/.ssh/config':
    ensure  => file,
    content => "# Puppet-managed file. Do not edit.\n
    HostName 52.201.163.140
    User ubuntu
    IdentityFile ~/.ssh/school
    PasswordAuthentication no\n",
  }
}
