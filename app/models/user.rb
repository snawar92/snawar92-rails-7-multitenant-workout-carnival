# frozen_string_literal: true

class User < ApplicationRecord
  devise :masqueradable, :database_authenticatable, :confirmable, :registerable, :trackable, :recoverable,
         :rememberable, :validatable, :omniauthable

  has_one_attached :avatar
  has_person_name

  #belongs_to_tenant :account

  has_many :notifications, as: :recipient
  has_many :services
  has_many :posts
  has_many :comments
end
