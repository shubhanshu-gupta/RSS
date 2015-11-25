class NewsItem < ActiveRecord::Base
	attr_accessible :title, :content, :author_name
end
