defmodule PlateSlateWeb.Schema do
  use Absinthe.Schema

  query do
    field :health, :string
  end

  object :menu_item do
    field :id, :id
    field :name, :string
    field :description, :string
  end
end
