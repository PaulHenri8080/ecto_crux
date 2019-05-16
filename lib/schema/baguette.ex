defmodule EctoCrux.Schema.Baguette do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  schema "baguettes" do
    field(:name)
  end

  def changeset(user, params \\ %{}) do
    user
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
