alias AnimalBoarding.Repo
alias AnimalBoarding.{Accounts, Users, HousingUnits, Species, Animals}

# Create some accounts
account1 = Repo.insert!(%Accounts{account_id: Ecto.UUID.generate(), primary_credit_card: "4111-1111-1111-1111"})
account2 = Repo.insert!(%Accounts{account_id: Ecto.UUID.generate(), primary_credit_card: "5500-0000-0000-0004"})

# Create some users
Repo.insert!(%Users{
  user_id: Ecto.UUID.generate(),
  username: "lucy",
  first_name: "Lucy",
  last_name: "Smith",
  primary_email: "lucy@example.com",
  primary_phone_number: "555-1234",
  parent_account: account1.account_id
})

Repo.insert!(%Users{
  user_id: Ecto.UUID.generate(),
  username: "john",
  first_name: "John",
  last_name: "Johnson",
  primary_email: "john@example.com",
  primary_phone_number: "555-5678",
  parent_account: account2.account_id
})

# Create some species
species1 = Repo.insert!(%Species{species_id: Ecto.UUID.generate(), species: "Dog"})
species2 = Repo.insert!(%Species{species_id: Ecto.UUID.generate(), species: "Cat"})

# Create some housing units
unit1 = Repo.insert!(%HousingUnits{unit_id: Ecto.UUID.generate(), unit_name: "Unit A", capacity: 2, is_available: true})
unit2 = Repo.insert!(%HousingUnits{unit_id: Ecto.UUID.generate(), unit_name: "Unit B", capacity: 1, is_available: false})

# Create some animals
Repo.insert!(%Animals{
  animal_id: Ecto.UUID.generate(),
  chip_id: 12345,
  pet_age: "3",
  pet_birthday: ~U[2022-01-01 00:00:00Z],
  pet_notes: "Friendly",
  account_id: account1.account_id,
  housing_unit_id: unit1.unit_id,
  species_id: species1.species_id,
  pet_name: "Buddy"
})

Repo.insert!(%Animals{
  animal_id: Ecto.UUID.generate(),
  chip_id: 67890,
  pet_age: "2",
  pet_birthday: ~U[2023-01-01 00:00:00Z],
  pet_notes: "Shy",
  account_id: account2.account_id,
  housing_unit_id: unit2.unit_id,
  species_id: species2.species_id,
  pet_name: "Whiskers"
})
