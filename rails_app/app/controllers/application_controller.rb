class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def proxy_to_phoenix
    reverse_proxy "http://localhost:4000" do |config|
      config.on_missing do |code, response|
        redirect_to root_url and return
      end
    end
  end
end
