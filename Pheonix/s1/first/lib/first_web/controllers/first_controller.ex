defmodule FirstWeb.FirstController do
  use FirstWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}=params) do
    render(conn, "show.html", messenger: messenger)
  end

end
