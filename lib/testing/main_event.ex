defmodule Testing.MainEvent do
  @moduledoc """
  The MainEvent context.
  """

  import Ecto.Query, warn: false;
  alias  Testing.Repo;
  alias  Testing.Items.A;
  alias  Testing.Items.B;
  alias  Testing.Items.Joint;

  def setup() do
    j1 = %B{} |> B.changeset(%{nonsense: "wut1"}) |> Repo.insert!() |> Joint.changeset();
    j2 = %B{} |> B.changeset(%{nonsense: "wut2"}) |> Repo.insert!() |> Joint.changeset();
    j3 = %B{} |> B.changeset(%{nonsense: "wut3"}) |> Repo.insert!() |> Joint.changeset();

    %A{} |> A.changeset(%{i_dunno: "I love Elixir!", smth_else: 42}, [j1, j2, j3])
         |> Repo.insert!();
  end
end
