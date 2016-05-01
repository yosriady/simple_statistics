defmodule SimpleStatistics.Mixfile do
  use Mix.Project

  def project do
    [app: :simple_statistics,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, "~> 0.11", only: :dev},
     {:earmark, "~> 0.1", only: :dev},
     {:dialyxir, "~> 0.3", only: [:dev]}]
  end


  defp description do
    """
    Statistics toolkit for Elixir.
    """
  end

  defp package do
    [
     files: ["lib", "mix.exs", "README.md"],
     maintainers: ["Yos Riady"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/Leventhan/simple_statistics",
              "Docs" => "http://hexdocs.pm/simple_statistics/"}
     ]
  end
end
