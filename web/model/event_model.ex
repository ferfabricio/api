defmodule Api.EventModel do
  use Api.Web, :model

  defstruct [:title, :description, :date, :url, :venue, :status]
end