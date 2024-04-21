defmodule Testing.Repo.Migrations.CreateItemB do
  use Ecto.Migration;

  def change do
    create table(:item_b, primary_key: false) do
      add(:item_b_id, :bigserial, primary_key: true);
      add(:nonsense,  :string,    null:        false);

      timestamps();
    end
  end
end
