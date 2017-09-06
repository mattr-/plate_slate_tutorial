defmodule PlateSlateWeb.Schema do
  use Absinthe.Schema

  import Ecto.Query
  alias PlateSlate.{Menu, Repo}

  query do
    field :menu_items, list_of(:menu_item) do
      arg :matching, :string
      resolve fn
        _, %{matching: term}, _ ->
          query =
            Menu.Item
            |> where([item], ilike(item.name, ^"%#{term}%"))
          {:ok, Repo.all(query)}
        _, _, _ ->
          {:ok, Repo.all(Menu.Item)}
      end
    end
  end

  object :menu_item do
    field :id, :id
    field :name, :string
    field :description, :string
    field :price, :float
  end
end
