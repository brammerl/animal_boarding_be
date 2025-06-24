defmodule AnimalBoarding.Repo.Migrations.AddCreatedAtToAccountsAnimalsUsers do
  use Ecto.Migration

  def change do
    alter table(:accounts) do
      add :created_at, :utc_datetime
    end

    alter table(:animals) do
      add :created_at, :utc_datetime
    end

    alter table(:users) do
      add :created_at, :utc_datetime
    end
  end
end
