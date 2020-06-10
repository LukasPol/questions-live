# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  text       :string
#  vote       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_questions_on_post_id  (post_id)
#  index_questions_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (post_id => posts.id)
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :question do
    text { "MyString" }
    vote { 1 }
    post { nil }
    user { nil }
  end
end
