defmodule Firehose.Repo.Migrations.CreateQutations do
  use Ecto.Migration

  def change do
    create table(:qutations) do
      add :author, :string
      add :text, :text

      timestamps()
    end
  end
end
