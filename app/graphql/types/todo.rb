class Types::Todo < Types::BaseObject
  field :title, String, null: false
  field :body, String, null: false
end