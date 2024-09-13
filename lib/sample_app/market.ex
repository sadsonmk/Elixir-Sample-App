defmodule SampleApp.Market do
  @moduledoc """
  The Market context.
  """

  import Ecto.Query, warn: false
  alias SampleApp.Repo

  alias SampleApp.Market.Seller

  @doc """
  Returns the list of sellers.

  ## Examples

      iex> list_sellers()
      [%Seller{}, ...]

  """
  def list_sellers do
    Repo.all(Seller)
  end

  @doc """
  Gets a single seller.

  Raises `Ecto.NoResultsError` if the Seller does not exist.

  ## Examples

      iex> get_seller!(123)
      %Seller{}

      iex> get_seller!(456)
      ** (Ecto.NoResultsError)

  """
  def get_seller!(id), do: Repo.get!(Seller, id)

  @doc """
  Creates a seller.

  ## Examples

      iex> create_seller(%{field: value})
      {:ok, %Seller{}}

      iex> create_seller(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_seller(attrs \\ %{}) do
    %Seller{}
    |> Seller.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a seller.

  ## Examples

      iex> update_seller(seller, %{field: new_value})
      {:ok, %Seller{}}

      iex> update_seller(seller, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_seller(%Seller{} = seller, attrs) do
    seller
    |> Seller.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a seller.

  ## Examples

      iex> delete_seller(seller)
      {:ok, %Seller{}}

      iex> delete_seller(seller)
      {:error, %Ecto.Changeset{}}

  """
  def delete_seller(%Seller{} = seller) do
    Repo.delete(seller)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking seller changes.

  ## Examples

      iex> change_seller(seller)
      %Ecto.Changeset{data: %Seller{}}

  """
  def change_seller(%Seller{} = seller, attrs \\ %{}) do
    Seller.changeset(seller, attrs)
  end

  alias SampleApp.Market.Product

  @doc """
  Returns the list of products.

  ## Examples

      iex> list_products()
      [%Product{}, ...]

  """
  def list_products do
    Repo.all(Product)
  end

  @doc """
  Gets a single product.

  Raises `Ecto.NoResultsError` if the Product does not exist.

  ## Examples

      iex> get_product!(123)
      %Product{}

      iex> get_product!(456)
      ** (Ecto.NoResultsError)

  """
  def get_product!(id), do: Repo.get!(Product, id)

  @doc """
  Creates a product.

  ## Examples

      iex> create_product(%{field: value})
      {:ok, %Product{}}

      iex> create_product(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_product(attrs \\ %{}) do
    %Product{}
    |> Product.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a product.

  ## Examples

      iex> update_product(product, %{field: new_value})
      {:ok, %Product{}}

      iex> update_product(product, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_product(%Product{} = product, attrs) do
    product
    |> Product.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a product.

  ## Examples

      iex> delete_product(product)
      {:ok, %Product{}}

      iex> delete_product(product)
      {:error, %Ecto.Changeset{}}

  """
  def delete_product(%Product{} = product) do
    Repo.delete(product)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking product changes.

  ## Examples

      iex> change_product(product)
      %Ecto.Changeset{data: %Product{}}

  """
  def change_product(%Product{} = product, attrs \\ %{}) do
    Product.changeset(product, attrs)
  end
end
