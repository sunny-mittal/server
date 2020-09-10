# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    add_field GraphQL::Types::Relay::NodeField
    field :lists, [Types::List], null: false

    def lists
      ::List.all
    end
  end
end
