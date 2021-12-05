defmodule WabanexWeb.Schema.Types.Training do
  use Absinthe.Schema.Notation

  import_types WabanexWeb.Schema.Types.Exercise

  @desc "Logic training representation"
  object :training do
    field :id, non_null(:uuid4)
    field :start_date, non_null(:string)
    field :end_date, non_null(:string)
    field :exercises, list_of(:exercise)
  end

  input_object :create_training_input do
    field :user_id, non_null(:uuid), description: "ID do usuário"
    field :start_date, non_null(:string), description: "Data do inicio do treino"
    field :end_date, non_null(:string), description: "Data do fim do treino"
    field :exercises, list_of(:exercise_input), description: "Lista de exercicios"
  end
end