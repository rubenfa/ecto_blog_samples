defmodule EctoBlogSamples do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(Repo, [])
    ]

    opts = [strategy: :one_for_one, name: EctoBlogSamples.Supervisor]
    Supervisor.start_link(children, opts)
  end


end

