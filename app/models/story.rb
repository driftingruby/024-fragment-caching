class Story < ActiveRecord::Base
  acts_as_ordered_taggable

  before_update :expire_changed_tags, if: :tag_list_changed?

  private

  def expire_changed_tags
    original_tag_list = self.tag_list_change.first
    new_tag_list = self.tag_list_change.last
    modified_tags = original_tag_list - new_tag_list | new_tag_list - original_tag_list
    modified_tags.each do |tag|
      self.expire_fragment "tag/#{tag}"
    end
  end
end
