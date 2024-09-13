defmodule SampleApp.Market.Seller do
  alias SampleApp.Market.Product
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "sellers" do
    field :name, :string
    has_many :products, Product

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(seller, attrs) do
    seller
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
