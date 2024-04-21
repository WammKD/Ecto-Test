defmodule Testing.MainEvent do
  @moduledoc """
  The MainEvent context.
  """

  import Ecto.Query, warn: false;
  alias  Testing.Repo;
  alias  Testing.Items.A;
  alias  Testing.Items.B;

  def setup() do
    b1 = %B{} |> B.changeset(%{nonsense: "wut1"}) |> Repo.insert!();
    b2 = %B{} |> B.changeset(%{nonsense: "wut2"}) |> Repo.insert!();
    b3 = %B{} |> B.changeset(%{nonsense: "wut3"}) |> Repo.insert!();

    %A{} |> A.changeset(%{i_dunno: "I love Elixir!", smth_else: 42}, [b1, b2, b3])
         |> Repo.insert!();
  end
end
