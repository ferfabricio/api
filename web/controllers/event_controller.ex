defmodule Api.EventController do
  use Api.Web, :controller
  use Api.Web, :service

  def get(conn, _params) do
  	resp = Api.EventService.get(conn)

    conn
    |> put_status(if Map.has_key?(resp, :error), do: 404, else: 200)
    |> json(resp)
  end
end
