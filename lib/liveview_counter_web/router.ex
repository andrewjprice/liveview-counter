defmodule LiveviewCounterWeb.Router do
  use LiveviewCounterWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :put_layout, {LiveviewCounterWeb.LayoutView, :app}
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LiveviewCounterWeb do
    pipe_through :browser

    live("/", CounterLive)
  end

  # Other scopes may use custom stacks.
  # scope "/api", LiveviewCounterWeb do
  #   pipe_through :api
  # end
end
