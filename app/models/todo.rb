# frozen_string_literal: true

class Todo < ApplicationRecord
  has_and_belongs_to_many :lists
end
