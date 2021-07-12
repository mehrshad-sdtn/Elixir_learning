defmodule FirstWeb.PageController do
  use FirstWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
