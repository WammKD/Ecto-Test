defmodule Testing.Repo.Migrations.CreateItemAToItemJoint do
  use Ecto.Migration;

  def change do
    create table(:item_a_to_item_joint, primary_key: false) do
      add(:item_a_id,     references(:item_a,
                                     column:    :item_a_id,
                                     on_delete: :delete_all), primary_key: true);
      add(:item_joint_id, references(:item_join,
                                     column:    :item_join_id,
                                     on_delete: :delete_all), primary_key: true);
    end

    create(index(:item_a_to_item_joint, [:item_a_id]));
    create(index(:item_a_to_item_joint, [:item_joint_id]));
  end
end
