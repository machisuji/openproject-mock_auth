module OmniAuth
  module Strategies
    ##
    # Mock authentication strategy. Logs in a user given their email address.
    class MockAuth
      include OmniAuth::Strategy

      option :fields, [:email]

      def request_phase
        form = OmniAuth::Form.new(title: 'Mock Auth', url: callback_path)
        options.fields.each do |field|
          form.text_field field.to_s.capitalize.gsub('_', ' '), field.to_s
        end
        form.button 'Sign In'
        form.to_response
      end

      def callback_phase
        user = User.find_by_mail(info[:email])
        request.session[:user_id] = user.id
        redirect_to("/")
      end

      info do
        options.fields.each_with_object({}) do |field, hash|
          hash[field] = request.params[field.to_s]
          hash
        end
      end

      private

      def redirect_to(url)
        res = Rack::Response.new
        res.redirect url
        res.finish
      end
    end
  end
end
