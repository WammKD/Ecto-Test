defmodule Testing.Repo.Migrations.CreateItemC do
  use Ecto.Migration;

  def change do
    create table(:item_c, primary_key: false) do
      add(:item_c_id,  :bigserial, primary_key: true);
      add(:never_used, :string,    null:        false);

      timestamps();
    end
  end
end
