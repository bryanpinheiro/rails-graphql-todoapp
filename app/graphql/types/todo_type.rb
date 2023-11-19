class Types::TodoType < Types::BaseObject
  field :id, ID, null: false
  field :title, String, null: false
  field :completed, Boolean, null: false
end
