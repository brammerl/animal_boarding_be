defmodule AnimalBoarding.Repo.Migrations.RemoveAutoIdAnimalsTable do
  use Ecto.Migration

  def change do
    alter table(:animals) do
      remove :id
    end

  end
end
