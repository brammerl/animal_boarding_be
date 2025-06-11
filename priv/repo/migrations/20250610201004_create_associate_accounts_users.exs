defmodule AnimalBoarding.Repo.Migrations.CreateAssociateAccountsUsers do
  use Ecto.Migration

   def change do
    alter table(:users) do
      modify :user_id, :uuid, autogenerate: false, from: {:uuid, autogenerate: true}
      add :parent_account, references("accounts", column: :account_id, type: :uuid, on_delete: :delete_all)
    end
  end
end
