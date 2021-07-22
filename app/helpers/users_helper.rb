module UsersHelper
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravtar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravtar_url, { alt: user.name, class: "gravatar" })
  end
end
