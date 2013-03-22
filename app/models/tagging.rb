class Tagging < ActiveRecord::Base
  attr_accessible :article_id, :tag_id, :tag_list
  belongs_to :article
  belongs_to :tag

end
