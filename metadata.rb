# frozen_string_literal: true

name 'stash'
maintainer 'Brian Flad'
maintainer_email 'bflad417@gmail.com'
license 'Apache-2.0'
description 'Installs/Configures Atlassian Stash'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '4.5.2'
chef_version '>= 11' if respond_to?(:chef_version)

recipe 'stash', 'Installs/Configures Atlassian Stash'
recipe 'stash::apache2', 'Installs/Configures Apache 2 proxy for Stash'
recipe 'stash::backup_client', 'Installs/Configures Atlassian Stash Backup Client'
recipe 'stash::backup_client_cron', 'Installs/Configures Atlassian Stash Backup Client cron.d'
recipe 'stash::configuration', "Configures Stash's settings"
recipe 'stash::database', 'Installs/configures MySQL/Postgres server, database, and user for Stash'
recipe 'stash::linux_standalone', 'Installs/configures Stash via Linux standalone archive'
recipe 'stash::service_init', 'Installs/configures Stash init service'
recipe 'stash::tomcat_configuration', "Configures Stash's built-in Tomcat"

supports 'amazon'
supports 'centos'
supports 'redhat'
supports 'scientific'
supports 'ubuntu'

depends 'apache2'
depends 'ark'
depends 'cron'
depends 'database'
depends 'git'
depends 'java'
depends 'mysql'
depends 'mysql2_chef_gem'
depends 'mysql_connector'
depends 'perl'
depends 'postgresql'
depends 'yum-epel'

source_url 'https://github.com/bflad/chef-stash'
issues_url 'https://github.com/bflad/chef-stash/issues'
