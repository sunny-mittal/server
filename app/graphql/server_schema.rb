class ServerSchema < GraphQL::Schema
  # Opt in to the new runtime (default in future graphql-ruby versions)
  use GraphQL::Execution::Interpreter
  use GraphQL::Analysis::AST

  # Add built-in connections for pagination
  use GraphQL::Pagination::Connections

  mutation Types::MutationType
  query Types::QueryType

  use GraphQL::Batch

  def self.id_from_object(object, type_definition, query_ctx)
    GraphQL::Schema::UniqueWithinType.encode(type_definition.graphql_name, object.id)
  end

  def self.object_from_id(id, query_ctx)
    type_name, item_id = GraphQL::Schema::UniqueWithinType.decode(id)
    Graphql::NodeLoader.load(type_name, item_id)
  end

  def self.resolve_type(type, obj, _ctx)
    case obj
    when Todo then Types::Todo
    else
      raise "Unexpected object: #{obj}"
    end
  end
end
