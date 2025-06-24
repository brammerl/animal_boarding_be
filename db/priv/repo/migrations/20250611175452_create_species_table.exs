defmodule AnimalBoarding.Repo.Migrations.CreateSpeciesTable do
  use Ecto.Migration

  def change do
    create table(:species, primary_key: false) do
      add :species_id, :uuid, primary_key: true, null: false
      add :species, :string
    end

    alter table(:animals) do
      add :species_id, references(:species, column: :species_id, type: :uuid, on_delete: :nilify_all)
    end
  end
end
