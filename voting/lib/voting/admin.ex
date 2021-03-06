defmodule Voting.Admin do
  use Ecto.Schema
  import Ecto.Changeset

  schema "administrator" do
    field :email, :string, null: false
    field :name, :string, null: false
    field :password_hash, :string, null: false

    timestamps()
  end

  @doc false
  def changeset(admin, attrs) do
    admin
    |> cast(attrs, [:name, :email, :password_hash])
    |> validate_required([:name, :email, :password_hash])
  end
end
