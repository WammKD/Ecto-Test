defmodule Testing.Items.A do
  use Ecto.Schema;

  @primary_key {:item_a_id, :id, autogenerate: true}
  schema "item_a" do
    field(:i_dunno,   :string);
    field(:smth_else, :integer);

    timestamps();
  end
end
