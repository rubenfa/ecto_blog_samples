defmodule EctoBlogSamples.Mixfile do
  use Mix.Project

  def project do
    [app: :ecto_blog_samples,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :ecto, :mongodb_ecto],
     mod: {EctoBlogSamples, []}]
  end


  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ecto, "~> 1.0"}, {:mongodb_ecto, "~> 0.1.5"}]
  end
end
