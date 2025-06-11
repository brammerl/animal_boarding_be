alias AnimalBoarding.Repo
alias AnimalBoarding.{Animals, Users, HousingUnits, Species, Accounts}

# Delete in order of dependencies to avoid foreign key constraint errors
Repo.delete_all(Animals)
Repo.delete_all(Users)
Repo.delete_all(HousingUnits)
Repo.delete_all(Species)
Repo.delete_all(Accounts)
