# == Schema Information
#
# Table name: posts
#
#  id               :integer          not null, primary key
#  banner_image_url :string
#  body             :text
#  description      :text
#  published        :boolean          default(FALSE)
#  published_at     :datetime
#  slug             :string
#  title            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  author_id        :integer
#
# Indexes
#
#  index_posts_on_author_id  (author_id)
#  index_posts_on_slug       (slug) UNIQUE
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
