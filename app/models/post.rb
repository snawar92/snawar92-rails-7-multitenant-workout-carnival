class Post < ApplicationRecord
  belongs_to_tenant :user
  has_attached_file :avatar,
                    url: "/users/:user_id/post/:id/logo_image/:style_:basename.:extension",
                    path: ":rails_root/public/users/:user_id/post/:id/logo_image/:style_:basename.:extension",
                    styles: { medium: "300x300>", thumb: "100x100>" },
                    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


  Paperclip.interpolates :user_id  do |attachment, style|
    attachment.instance&.user_id
  end
end
