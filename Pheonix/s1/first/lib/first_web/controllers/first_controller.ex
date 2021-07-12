defmodule FirstWeb.FirstController do
  use FirstWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

end
