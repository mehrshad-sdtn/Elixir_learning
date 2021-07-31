defmodule DiscussWeb.Plugs.SetUser do
  import Plug.Conn
  import Pheonix.Controller

  alias Discuss.Repo
  alias Discuss.User
  alias Disucss.Router.Helpers

  def init(_params) do
    user_id = get_session(conn, :user_id)

    cond do
      user = user_id && Repo.get(User, user_id) ->
        assign(conn, :user, user)

      true ->

    end
  end

  def call(conn, _params) do

  end

end
