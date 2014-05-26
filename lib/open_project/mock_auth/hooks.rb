module OpenProject::MockAuth
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_account_login_auth_provider, :partial => 'hooks/login/mock_auth'
  end
end
