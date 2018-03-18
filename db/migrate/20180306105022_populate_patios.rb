class PopulatePatios < ActiveRecord::Migration[5.1]
  def up
    Unidade.all.each do |unidade|
      unidade.patios.create!([
        { nome: 'Norte'     },
        { nome: 'Nordeste'  },
        { nome: 'Leste'     },
        { nome: 'Sudeste'   },
        { nome: 'Sul'       },
        { nome: 'Sudoeste'  },
        { nome: 'Oeste'     },
        { nome: 'Noroeste'  }
      ])
    end
  end

  def down
    Patio.delete_all
  end
end
