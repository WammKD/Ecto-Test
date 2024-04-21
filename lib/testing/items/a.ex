defmodule Testing.Items.A do
  use Ecto.Schema;

  @primary_key {:item_a_id, :id, autogenerate: true}
  schema "item_a" do
    field(:i_dunno,   :string);
    field(:smth_else, :integer);

    many_to_many(:item_bs,                         Testing.Items.B,
                 join_through: "item_a_to_item_b", join_keys: [item_a_id: :item_a_id,
                                                               item_b_id: :item_b_id]);

    timestamps();
  end
end
