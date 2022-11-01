require 'redmine'

require File.expand_path('../lib/issues_helper_patch_for_watchers', __FILE__)

Redmine::Plugin.register :redmine_watcher_extension_for_PMS do
  name 'Redmine Watcher Extension for PMS'
  author 'skworks33'
  description 'Redmine Watcher Extension for PMS'
  version '0.0.1'
  url 'https://github.com/skworks33/redmine_watcher_extension_for_PMS'
  author_url 'https://github.com/skworks33'
end
