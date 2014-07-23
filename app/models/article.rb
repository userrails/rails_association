class Article < ActiveRecord::Base
 attr_accessible :article_name

 has_many :comments, :as => :commentable
end
