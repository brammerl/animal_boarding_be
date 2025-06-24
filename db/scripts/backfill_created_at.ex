alias AnimalBoarding.Repo
import Ecto.Query

now = DateTime.utc_now() |> DateTime.truncate(:second)

# Update all accounts
from(a in "accounts", update: [set: [created_at: ^now]])
|> Repo.update_all([])

# Update all animals
from(an in "animals", update: [set: [created_at: ^now]])
|> Repo.update_all([])

# Update all users
from(u in "users", update: [set: [created_at: ^now]])
|> Repo.update_all([])
