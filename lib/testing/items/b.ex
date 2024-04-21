defmodule Testing.Items.B do
  use Ecto.Schema;

  @primary_key {:item_b_id, :id, autogenerate: true}
  schema "item_b" do
    field(:nonsense, :string);

    timestamps();
  end
end
