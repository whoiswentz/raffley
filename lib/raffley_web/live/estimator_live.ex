defmodule RaffleyWeb.EstimatorLive do
  use RaffleyWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(tickets: 0)
      |> assign(price: 3)

    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="estimator">
      <h1>Raffle Estimator</h1>
      <section>
        <div>
          <%= @tickets %>
        </div>
        @
        <div>
          <%= @price %>
        </div>
        =
        <div>
          <%= @tickets * @price %>
        </div>
      </section>
    </div>
    """
  end
end
