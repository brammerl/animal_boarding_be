use Ecto.Query
query = from p in User

Repo.delete_all(query)
