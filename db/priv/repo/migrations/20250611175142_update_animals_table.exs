defmodule AnimalBoarding.Repo.Migrations.UpdateAnimalsTable do
  use Ecto.Migration

  def change do
    alter table(:animals) do
      modify :species, :string, null: false
      modify :pet_name, :string, null: false
    end
  end
end
