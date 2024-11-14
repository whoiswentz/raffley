defmodule RaffleyWeb.RaffleLive.Index do
  use RaffleyWeb, :live_view

  alias Raffley.{Raffles, Raffle}

  import RaffleyWeb.CustomComponents.BadgeComponents

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
        <.status_badge status={@raffle.status} />
      </div>
    </div>
    """
  end
end
