Types::Unidade = GraphQL::ObjectType.define do
  name 'Unidade'
  description 'Corresponde a uma unidade da Locacars'

  field :id   , !types.ID
  field :nome , !types.String
end
