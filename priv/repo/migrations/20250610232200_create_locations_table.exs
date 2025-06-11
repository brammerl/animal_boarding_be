defmodule AnimalBoarding.Repo.Migrations.CreateLocationsTable do
  use Ecto.Migration

  def change do
    create table("zones", primary_key: false) do
      add :zone_id, :uuid, null: false, primary_key: true, autogenerate: false
      add :zone_name, :string, null: false
      add :zone_type, :string
      add :is_active, :boolean, null: false
    end
  end
end
