require "#{Rails.root}/app/helpers/application_helper.rb"

class ArgumentNode < ActiveRecord::Base
  has_many :argument_connections
  
  include ApplicationHelper
  
  def preview width
    string_preview self.explanation, width
  end
  
end
