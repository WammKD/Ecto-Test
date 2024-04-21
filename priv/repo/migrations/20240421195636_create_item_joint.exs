defmodule Testing.Repo.Migrations.CreateItemJoint do
  use Ecto.Migration;

  def change do
    create table(:item_joint, primary_key: false) do
      add( :joint_id, :bigserial, primary_key: true);
      add(:item_b_id, references(:item_b, column: :item_b_id, on_delete: :delete_all));
      add(:item_c_id, references(:item_c, column: :item_c_id, on_delete: :delete_all));
    end

    create(       index(:item_joint, [ :joint_id]));
    create(unique_index(:item_joint, [:item_b_id]));
    create(unique_index(:item_joint, [:item_c_id]));
  end
end
