class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # # Customizing the redirect after sign-out
  # def after_sign_out_path_for(resource_or_scope)
  #   new_user_session_path # Redirect to the sign-in page for User model
  # end
  def after_sign_out_path_for(resource_or_scope)
    # Example: Redirect to the sign-in page after sign out
    new_user_session_path
  end
end
