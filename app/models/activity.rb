class Activity < ApplicationRecord
    default_scope -> {order(created_at: :desc)}
    belongs_to :action, polymorphic: true
    belongs_to :user
end
