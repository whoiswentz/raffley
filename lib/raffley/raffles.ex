defmodule Raffley.Raffle do
  defstruct [:id, :prize, :ticket_price, :status, :image_path, :description]
end

defmodule Raffley.Raffles do
  def list_raffles do
    [
      %Raffley.Raffle{
        id: 1,
        prize: "Autographed Jersey",
        ticket_price: 2,
        status: :open,
        image_path: "/images/jersey.jpg",
        description: "Steup up, sport fans!"
      },
      %Raffley.Raffle{
        id: 2,
        prize: "Coffe with a yeti",
        ticket_price: 3,
        status: :upcomming,
        image_path: "/images/yeti-coffee.jpg",
        description: "A super-chill coffee date."
      },
      %Raffley.Raffle{
        id: 3,
        prize: "Vontage Comic Book",
        ticket_price: 1,
        status: :closed,
        image_path: "/images/comic-book.jpg",
        description: "A rare collectable!"
      }
    ]
  end
end
