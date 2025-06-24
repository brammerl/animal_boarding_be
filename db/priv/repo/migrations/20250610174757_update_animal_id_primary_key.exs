defmodule AnimalBoarding.Repo.Migrations.UpdateAnimalIdPrimaryKey do
  use Ecto.Migration

  def change do
    alter table(:animals) do
      modify :animal_id, :uuid, primary_key: true
    end
  end
end
