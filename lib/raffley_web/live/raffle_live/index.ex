defmodule RaffleyWeb.RaffleLive.Index do
  use RaffleyWeb, :live_view

  alias Raffley.{Raffles, Raffle}

  def mount(_params, _session, socket) do
    socket = assign(socket, :raffles, Raffles.list_raffles())
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="raffle-index">
      <div class="raffles">
        <.raffle_card :for={raffle <- @raffles} raffle={raffle} />
      </div>
    </div>
    """
  end

  attr :raffle, Raffle, required: true

  def raffle_card(assigns) do
    ~H"""
    <div class="card">
      <img src={@raffle.image_path} alt={@raffle.description} />
      <h2><%= @raffle.prize %></h2>
      <div class="details">
        <div class="price">
          $<%= @raffle.ticket_price %> / tickets
        </div>
        <.badge status={@raffle.status} />
      </div>
    </div>
    """
  end

  attr :status, :atom, values: [:open, :closed, :upcomming], default: :upcomming

  def badge(assigns) do
    ~H"""
    <div class="rounded-md px-2 py-1 text-xs font-medium uppercase inline-block border text-lime-600 border-lime-600">
      <%= @status %>
    </div>
    """
  end
end
