$:.unshift File.dirname(__FILE__)

require 'rails-security-backports/version'

require 'active_record'

require 'rails-security-backports/rails-cve-backports/cve-2013-0276.rb'
require 'rails-security-backports/rails-cve-backports/cve-2013-0277.rb'

require 'rails-security-backports/ruby-cve-backports/cve-2008-3790.rb'
require 'rails-security-backports/ruby-cve-backports/cve-2014-8080.rb'
