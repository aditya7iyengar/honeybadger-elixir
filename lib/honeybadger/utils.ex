defmodule Honeybadger.Utils do
  @moduledoc """
    Assorted functions to do 
  """

  @doc """
    Internally all modules are prefixed with Elixir. This
    function removes the Elixir prefix.
  """
  def strip_elixir_prefix(module) do
    module
    |> Atom.to_string
    |> String.split(".")
    |> tl
    |> Enum.join(".")
  end
end