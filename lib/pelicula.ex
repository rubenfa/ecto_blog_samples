defmodule Pelicula do
  use Ecto.Schema
  import Ecto.Changeset

  

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "peliculas" do
    field :titulo, :string
    field :fecha_estreno, :integer
    field :presupuesto, :integer
    field :generos, {:array, :string}
    timestamps
  end



end
