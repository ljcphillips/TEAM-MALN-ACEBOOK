# frozen_string_literal: true

# class defines the comment class
class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
end
