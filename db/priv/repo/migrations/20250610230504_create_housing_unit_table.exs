defmodule AnimalBoarding.Repo.Migrations.CreateHousingUnitTable do
  use Ecto.Migration

  def change do
    create table("housing_units", primary_key: false) do
      add :unit_id, :uuid, null: false, primary_key: true
      add :unit_name, :string, null: false
      add :capacity, :integer, null: false
      add :is_available, :boolean, null: false
    end
  end
end
