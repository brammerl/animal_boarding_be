defmodule AnimalBoarding.Repo.Migrations.CreateAssociationAnimalsUnits do
  use Ecto.Migration

  def change do
    alter table(:animals) do
      add :housing_unit_id, references(:housing_units, on_delete: :nilify_all, column: :unit_id, type: :binary_id)
    end
  end
end
