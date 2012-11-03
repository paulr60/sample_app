module UsersHelper

	def gravatar_for2(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end

	def gravatar_for(user)
		app_root = "/home/paul/ruby/rails/sites/mhartl_tutorial/sample_app/"
		url = app_root + "app/assets/images/rails.png"
		url = "rails.png"
		image_tag(url, alt: url, class: "gravatar")
	end

end