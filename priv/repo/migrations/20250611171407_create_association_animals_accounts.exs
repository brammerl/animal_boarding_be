defmodule AnimalBoarding.Repo.Migrations.CreateAssociationAnimalsAccounts do
  use Ecto.Migration

  def change do
    alter table(:animals) do
      add :account_id, references(:accounts, on_delete: :delete_all, type: :binary_id, column: :account_id)
      add :pet_name, :string
      add :species, :string
    end
  end
end
