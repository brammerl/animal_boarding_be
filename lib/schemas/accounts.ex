defmodule AnimalBoarding.Accounts do
  use Ecto.Schema
  @primary_key {:account_id, :binary_id, autogenerate: false}

  schema "accounts" do
    field(:primary_credit_card, :string)
    has_many(:users, AnimalBoarding.Users, foreign_key: :parent_account)
  end
end

# You're making associations bw animals + housing units!
