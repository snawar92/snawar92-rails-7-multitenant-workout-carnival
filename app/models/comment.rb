class Comment < ApplicationRecord
  belongs_to_tenant :user
end
