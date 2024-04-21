defmodule Testing.Repo.Migrations.CreateItemA do
  use Ecto.Migration;

  def change do
    create table(:item_a, primary_key: false) do
      add(:item_a_id, :bigserial, primary_key: true);
      add(:i_dunno,   :string,    null:        false);
      add(:smth_else, :integer,   null:        false);

      timestamps();
    end
  end
end
