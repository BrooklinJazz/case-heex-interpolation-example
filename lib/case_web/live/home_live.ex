defmodule CaseWeb.HomeLive do
  use CaseWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, value: Enum.random(1..3))}
  end

  def render(assigns) do
    ~H"""
    <%= case @value do %>
      <% 1 -> %>
      A
      <% 2 -> %>
      B
      <% 3 -> %>
      C
    <% end %>
    """
  end
end
