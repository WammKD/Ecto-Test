defmodule Testing.Items.A do
  use    Ecto.Schema;
  import Ecto.Changeset;
  alias  Testing.Repo;

  @primary_key {:item_a_id, :id, autogenerate: true}
  schema "item_a" do
    field(:i_dunno,   :string);
    field(:smth_else, :integer);

    many_to_many(:item_joints,                         Testing.Items.Joint,
                 join_through: "item_a_to_item_joint", join_keys: [item_a_id:     :item_a_id,
                                                                   item_joint_id: :item_joint_id]);

    timestamps();
  end

  def changeset(%Testing.Items.A{} = a, attrs, itemJoints) do
    a |> Repo.preload(:item_bs)
      |> cast(attrs, [:i_dunno, :smth_else])
      |> put_assoc(:item_joints, itemJoints);
  end
end
