defmodule Api.EventController do
  use Api.Web, :controller

  def get(conn, _params) do
    events = Repo.all(events)
    render conn, events: events
  end
end
