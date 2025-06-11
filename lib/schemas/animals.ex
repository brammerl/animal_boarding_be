defmodule AnimalBoarding.Animals do
  use Ecto.Schema
  @primary_key {:animal_id, :binary_id, autogenerate: true}

  schema "animals" do
    field(:chip_id, :integer)
    field(:last_visit, :utc_datetime)
    field(:checkin_datetime, :utc_datetime)
    field(:checkout_datetime, :utc_datetime)
    field(:pet_age, :string)
    field(:pet_birthday, :utc_datetime)
    field(:pet_notes, :string)
    field(:pet_name, :string)

    belongs_to(:accounts, AnimalBoarding.Accounts,
      foreign_key: :account_id,
      references: :account_id,
      type: :binary_id
    )

    belongs_to(:housing_unit, AnimalBoarding.HousingUnits,
      foreign_key: :housing_unit_id,
      type: :binary_id,
      references: :unit_id
    )

    belongs_to(:species, AnimalBoarding.Species,
      foreign_key: :species_id,
      type: :binary_id,
      references: :species_id
    )
  end
end
