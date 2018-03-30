defmodule Parallel.Mixfile do
  use Mix.Project

  def project do
    [
      app: :parallel,
      description: "Straightforward parallel processing for Elixir",
      version: "0.0.3",
      elixir: "~> 1.6",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      package: [
        maintainers: ["Maximilian Stroh"],
        licences: ["MIT"],
        links: %{ "GitHub" => "https://github.com/Anonyfox/parallel" }
      ],
      aliases: aliases(),
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:credo, "~> 0.8", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false},
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      "compile": ["compile --warnings-as-errors"]
    ]
  end
end
