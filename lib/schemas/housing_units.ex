defmodule AnimalBoarding.HousingUnits do
  use Ecto.Schema
 @primary_key {:unit_id, :binary_id, autogenerate: false}

  schema "housing_units" do
    field :unit_name, :string
    field :capacity, :integer
    field :is_available, :boolean
    has_many(:animals, AnimalBoarding.Animals, foreign_key: :unit)
    belongs_to(:zone, AnimalBoarding.Zones, foreign_key: :parent_zone, references: :zone_id, type: :binary_id)
  end
end
