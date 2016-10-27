defmodule Api.EventService do
  use Api.Web, :service

  def get() do
    %{"message": "Service test"}
  end
end
