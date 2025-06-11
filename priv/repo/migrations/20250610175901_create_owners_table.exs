defmodule AnimalBoarding.Repo.Migrations.CreateOwnersTable do
  use Ecto.Migration

  def change do
    create table("users", primary_key: false) do
      add :user_id, :uuid, null: false, primary_key: true, autogenerate: true
      add :username, :string, null: false
      add :first_name, :string, null: false
      add :last_name, :string, null: false
      add :primary_email, :string, null: false
      add :primary_phone_number, :string, null:
      false
      add :secondary_phone_number, :string
    end

    create table("accounts", primary_key: false)
    do
      add :account_id, :uuid, null: false, primary_key: true, autogenerate: true
      add :primary_credit_card, :string
    end
  end
end
