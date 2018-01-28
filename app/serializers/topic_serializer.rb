class TopicSerializer < ActiveModel::Serializer
  attributes :id, :text, :comments_count

  belongs_to :user
end
