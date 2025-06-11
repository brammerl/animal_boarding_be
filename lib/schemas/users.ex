defmodule AnimalBoarding.Users do
  use Ecto.Schema
  @primary_key {:user_id, :binary_id, autogenerate: false}

  schema "users" do
    field(:username, :string)
    field(:first_name, :string)
    field(:last_name, :string)
    field(:primary_email, :string)
    field(:primary_phone_number, :string)

    belongs_to(:accounts, AnimalBoarding.Accounts,
      foreign_key: :parent_account,
      references: :account_id,
      type: :binary_id
    )
  end
end
