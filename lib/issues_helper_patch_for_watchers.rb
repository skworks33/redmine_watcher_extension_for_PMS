require_dependency 'issues_helper'

module IssuesHelperPatch

  # Returns an array of users that are proposed as watchers
  # on the new issue form
  def users_for_new_issue_watchers(issue)
    users = issue.watcher_users.select{|u| u.status == User::STATUS_ACTIVE}
    # "PMS" does not need to get the project user.
    # users = (users + issue.project.users.sort).uniq

    # Get the users of the group to which the user belongs
    User.current.groups.find_each do |g|
      users = (users + Group.find(g.id).users.where(status: User::STATUS_ACTIVE)).uniq
    end
    users
  end

end

IssuesHelper.prepend IssuesHelperPatch
