class Student < ActiveRecord::Base
  attr_accessible :bio, :github, :id, :linkedin, :name, :quote, :tagline, :treehouse_profile, :twitter
end
