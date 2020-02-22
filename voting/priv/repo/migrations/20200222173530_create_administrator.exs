defmodule Voting.Repo.Migrations.CreateAdministrator do
  use Ecto.Migration

  def change do
    create table(:administrator) do
      add :name, :string
      add :email, :string
      add :password_hash, :string

      timestamps()
    end

  end
end
