defmodule AnimalBoardingBe.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger

  @impl true
  def start(_type, _args) do
    children = [
      AnimalBoarding.Repo,
      # Starts a worker by calling: AnimalBoardingBe.Worker.start_link(arg)
      # {AnimalBoardingBe.Worker, arg}
      {Plug.Cowboy, scheme: :http, plug: MyPlug, options: [port: 4001]}
    ]



    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: AnimalBoardingBe.Supervisor]
    Supervisor.start_link(children, opts)


    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options


    Logger.info("Plug now running on localhost:4001")
    Process.sleep(:infinity)
  end
end
