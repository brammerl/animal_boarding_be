defmodule AnimalBoarding.Species do
  use Ecto.Schema
  @primary_key {:species_id, :binary_id, autogenerate: true}

  schema "species" do
    field(:species, :string)

    has_many(:animals, AnimalBoarding.Animals,
      foreign_key: :species_id,
      references: :species_id
    )
  end
end
