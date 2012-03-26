class ArgumentConnection < ActiveRecord::Base
  belongs_to :source, :class_name => "ArgumentNode", :foreign_key => "source_argument_id"
  belongs_to :target, :class_name => "ArgumentNode", :foreign_key => "target_argument_id"
end
