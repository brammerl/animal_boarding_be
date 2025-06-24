defmodule AnimalBoarding.Repo.Migrations.DropSpeciesColumnFromAnimals do
  use Ecto.Migration

  def change do
    alter table(:animals) do
      remove :species
    end
  end
end
