module UsersHelper
<<<<<<< HEAD
  # 該当ユーザーのメールアドレスに対応するGravatarの画像URLを返す
  def gravatar_for(user, options = { size: 50 })

    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
   size = options[:size]

    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
=======

 # 該当ユーザーのメールアドレスに対応するGravatarの画像URLを返す
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
>>>>>>> 31fa9486edea99cf6168b5f19223dee959249132
