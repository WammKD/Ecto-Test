defmodule Testing.Items.B do
  use    Ecto.Schema;
  import Ecto.Changeset;

  @primary_key {:item_b_id, :id, autogenerate: true}
  schema "item_b" do
    field(:nonsense, :string);

    timestamps();
  end

  def changeset(%Testing.Items.B{} = b, attrs) do
    b |> cast(attrs, [:nonsense]);
  end
end
