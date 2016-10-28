defmodule Api.EventController do
  use Api.Web, :controller
  use Api.Web, :service

  def get(conn, _params) do
    json conn, Api.EventService.get(conn)
  end
end
