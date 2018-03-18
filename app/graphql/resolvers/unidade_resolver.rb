class Resolvers::UnidadeResolver
  class << self
    def find
      ->(obj, args, ctx) { Unidade.find(args[:id]) }
    end

    def all
      ->(_obj, _args, _ctx)  { Unidade.all }
    end
  end
end
