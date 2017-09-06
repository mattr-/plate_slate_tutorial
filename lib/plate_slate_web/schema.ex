defmodule PlateSlateWeb.Schema do
  use Absinthe.Schema

  import Ecto.Query
  alias PlateSlate.{Menu, Repo}
  alias PlateSlateWeb.Resolvers

  query do
    field :menu_items, list_of(:menu_item) do
      arg :matching, :string
      resolve &Resolvers.Menu.menu_items/3
    end
  end

  object :menu_item do
    field :id, :id
    field :name, :string
    field :description, :string
    field :price, :float
  end
end
