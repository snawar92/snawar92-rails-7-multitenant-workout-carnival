# frozen_string_literal: true

module ApplicationHelper # rubocop:todo Style/Documentation

  def all_post_count
    current_user.posts.count
  end
end
