defmodule AnimalBoarding.Repo.Migrations.AlterCreatedAtDefaults do
  use Ecto.Migration

  def change do
    alter table(:accounts) do
      modify :created_at, :utc_datetime, null: false, default: fragment("NOW()")
    end

    alter table(:animals) do
      modify :created_at, :utc_datetime, null: false, default: fragment("NOW()")
    end

    alter table(:users) do
      modify :created_at, :utc_datetime, null: false, default: fragment("NOW()")
    end
  end
end
