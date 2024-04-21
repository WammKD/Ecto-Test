defmodule Testing.Items.Joint do
  use    Ecto.Schema;
  import Ecto.Changeset;
  alias  Testing.Repo;

  @primary_key {:joint_id, :id, autogenerate: true}
  schema "item_joint" do
    belongs_to(:item_b, Testing.Items.B, foreign_key: :item_b_id, references: :item_b_id);
  end

  def changeset(%Testing.Items.B{} = b) do
    %Testing.Items.B{} |> cast(%{}, []) |> put_assoc(:item_b, b);
  end
end
