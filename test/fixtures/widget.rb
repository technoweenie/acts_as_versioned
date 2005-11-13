class Widget < ActiveRecord::Base
  set_sequence_name 'widgets_seq'
  acts_as_versioned
end