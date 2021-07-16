defmodule Discuss.Topics do
  use Ecto.Schema
  import Ecto.Changeset

  schema "topics" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(topics, attrs) do
    topics
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
