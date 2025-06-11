defmodule AnimalBoarding.Zones do
  use Ecto.Schema
 @primary_key {:zone_id, :binary_id, autogenerate: false}

  schema "zones" do
    field :zone_name, :string
    field :zone_type, :string
    field :is_active, :boolean
  end
end
