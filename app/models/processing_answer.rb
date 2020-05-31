# frozen_string_literal: true

class ProcessingAnswer < ApplicationRecord
    has_many :tests
    accepts_nested_attributes_for :tests
end
  