Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :unidades, types[Types::Unidade] do
    resolve Resolvers::UnidadeResolver.all
  end

  field :unidade, Types::Unidade do
    argument :id, !types.ID
    resolve Resolvers::UnidadeResolver.find
  end
end
