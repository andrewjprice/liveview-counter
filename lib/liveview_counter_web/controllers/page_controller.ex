defmodule LiveviewCounterWeb.PageController do
  use LiveviewCounterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
