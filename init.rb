Redmine::Plugin.register :timelog_on_issue_page do
  name 'Timelog On Issue Page plugin'
  author 'Pitin Vladimir Vladimirovich'
  description 'This is a plugin that added timelog on issue page'
  version '0.0.1'
  url 'http://pitin.su'
  author_url 'http://pitin.su'
end

class Hooks < Redmine::Hook::ViewListener
    render_on :view_issues_show_details_bottom, :partial => 'hooks/timelog_on_issue_page/issues/timelog', :layout => false
end

Rails.application.config.to_prepare do
	IssuesController.send(:include, TimelogOnIssuePage::IssuesControllerPatch)
end
