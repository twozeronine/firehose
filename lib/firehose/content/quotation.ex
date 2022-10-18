defmodule Firehose.Content.Quotation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qutations" do
    field :author, :string
    field :text, :string

    timestamps()
  end

  @doc false
  def changeset(quotation, attrs) do
    quotation
    |> cast(attrs, [:author, :text])
    |> validate_required([:author, :text])
  end
end
