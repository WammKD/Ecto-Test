defmodule Testing.Repo.Migrations.CreateItemAToItemB do
  use Ecto.Migration;

  def change do
    create table(:item_a_to_item_b, primary_key: false) do
      add(:item_a_id, references(:item_a,
                                 column:    :item_a_id,
                                 on_delete: :delete_all), primary_key: true);
      add(:item_b_id, references(:item_b,
                                 column:    :item_b_id,
                                 on_delete: :delete_all), primary_key: true);
    end

    create(index(:item_a_to_item_b, [:item_a_id]));
    create(index(:item_a_to_item_b, [:item_b_id]));
  end
end
