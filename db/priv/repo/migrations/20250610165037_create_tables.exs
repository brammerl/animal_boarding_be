defmodule AnimalBoarding.Repo.Migrations.CreateTables do
  use Ecto.Migration

  def change do
    create table(:animals) do
      add :animal_id, :uuid, primary_key: true, autogenerate: true, null: false
      add :chip_id, :integer
      add :last_visit, :utc_datetime
      add :checkin_datetime, :utc_datetime
      add :checkout_datetime, :utc_datetime
      add :pet_age, :string, null: false
      add :pet_birthday, :utc_datetime, null: false
      add :pet_notes, :string
    end
  end
end
