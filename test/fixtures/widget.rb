class Widget < ActiveRecord::Base
  acts_as_versioned :sequence_name => 'widgets_seq'
end