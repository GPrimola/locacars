class PopulateUnidades < ActiveRecord::Migration[5.1]
  def up
    Unidade.create!([
      { nome: 'Aracaju'         , lat: -10.947247, long: -37.073082 },
      { nome: 'Belém'           , lat:  -1.455779, long: -48.490197 },
      { nome: 'Belo Horizonte'  , lat: -19.924502, long: -43.935238 },
      { nome: 'Boa Vista'       , lat:   2.823510, long: -60.675833 },
      { nome: 'Brasília'        , lat: -15.794229, long: -47.882166 },
      { nome: 'Campo Grande'    , lat: -20.469711, long: -54.620121 },
      { nome: 'Cuiabá'          , lat: -15.601411, long: -56.097892 },
      { nome: 'Curitiba'        , lat: -25.424429, long: -49.265382 },
      { nome: 'Florianópolis'   , lat: -27.594870, long: -48.548219 },
      { nome: 'Fortaleza'       , lat:  -3.731903, long: -38.526739 },
      { nome: 'Goiânia'         , lat: -16.686882, long: -49.264789 },
      { nome: 'João Pessoa'     , lat:  -7.119496, long: -34.845012 },
      { nome: 'Macapá'          , lat:   0.035574, long: -51.070535 },
      { nome: 'Maceió'          , lat:  -9.649849, long: -35.708949 },
      { nome: 'Manaus'          , lat:  -3.119028, long: -60.021731 },
      { nome: 'Natal'           , lat:  -5.779257, long: -35.200916 },
      { nome: 'Palmas'          , lat: -10.249091, long: -48.324286 },
      { nome: 'Porto Alegre'    , lat: -30.034647, long: -51.217658 },
      { nome: 'Porto Velho'     , lat:  -8.761160, long: -63.900430 },
      { nome: 'Recife'          , lat:  -8.047562, long: -34.876964 },
      { nome: 'Rio Branco'      , lat:  -9.975384, long: -67.824918 },
      { nome: 'Rio de Janeiro'  , lat: -22.906847, long: -43.172896 },
      { nome: 'Salvador'        , lat: -12.972218, long: -38.501414 },
      { nome: 'São Luís'        , lat:  -2.539110, long: -44.282905 },
      { nome: 'São Paulo'       , lat: -23.550520, long: -46.633309 },
      { nome: 'Teresina'        , lat:  -5.092011, long: -42.803760 },
      { nome: 'Vitória'         , lat: -20.297618, long: -40.295777 }
    ])
  end

  def down
    Unidade.delete_all
  end
end
