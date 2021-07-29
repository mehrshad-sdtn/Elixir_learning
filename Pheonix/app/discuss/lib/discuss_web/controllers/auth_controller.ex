defmodule DiscussWeb.AuthController do
  use DiscussWeb, :controller
  plug Ueberauth

  alias Discuss.User
  alias Discuss.Repo

  def callback(%{assigns: %{ueberauth_failure: _fails}} = conn, _params) do
    conn
    |> put_flash(:error, "Failed to authenticate.")
    |> redirect(to: "/")
  end

  def callback(%{assigns: %{ueberauth_auth: auth}} = conn, _params) do
    user_params = %{
      token: auth.credentials.token,
      email: auth.info.email,
      provider: "google"
    }
    changeset = User.changeset(%User{}, user_params)
    signin(conn, changeset)
  end

  defp signin(conn, changeset) do
    case insert_or_update_user(changeset) do
      {:ok, user} ->
      {:error, _reason} ->
      conn
      |> put_flash(:error, "Failed to authenticate.")
      |> redirect(to: "/")

   end

    end
  end


  defp insert_or_update_user(changeset) do
   case  Repo.get_by(User, email: changeset.changes.email) do
    nil -> Repo.insert(changeset)
    user -> {:ok, user}
   end


  end

end
