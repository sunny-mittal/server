# frozen_string_literal: true

class Types::List < Types::BaseObject
  field :todos, [Types::Todo], null: false

  def todos
    ::Loaders::AssociationLoader.for(object.class, :todos).load(object)
  end
end
