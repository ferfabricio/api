defmodule Api.EventService do
  use Api.Web, :service

  def get() do
    reponse = HTTPotion.get "http://localhost:4000/json/events.json"
    %{"message": "Service test"}
  end
end
