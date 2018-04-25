defmodule RailsShop do
  use Application

  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec

    # Define workers and child supervisors to be supervised
    children = [
      # Start the Ecto repository
      supervisor(RailsShop.Repo, []),
      # Start the endpoint when the application starts
      supervisor(RailsShop.Endpoint, []),
      # Start your own worker by calling: RailsShop.Worker.start_link(arg1, arg2, arg3)
      # worker(RailsShop.Worker, [arg1, arg2, arg3]),
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: RailsShop.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    RailsShop.Endpoint.config_change(changed, removed)
    :ok
  end
end
