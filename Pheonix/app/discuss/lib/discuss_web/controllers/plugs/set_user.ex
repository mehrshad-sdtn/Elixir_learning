defmodule DiscussWeb.Plugs.SetUser do
  import Plug.Conn
  import Pheonix.Controller

  alias Discuss.Repo
  alias Discuss.User

  def init(_params) do

  end
  def init(conn, _params) do
    user_id = get_session(conn, :user_id) #from Pheonix.Controller


    cond do
      user = user_id && Repo.get(User, user_id) ->
        assign(conn, :user, user) #from Plug.Conn

      true ->
        assign(conn, :user, nil)

    end
  end

end
