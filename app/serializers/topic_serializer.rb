class TopicSerializer < ActiveModel::Serializer
  attributes :id, :title, :created_at, :text, :comments_count

  belongs_to :user
end
