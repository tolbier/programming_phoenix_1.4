# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Rumbl.Repo.insert!(%Rumbl.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Rumbl.Multimedia
alias Rumbl.Accounts
alias Rumbl.Repo
alias Rumbl.Multimedia.Category

for category <- ~w(Action Drama Romance Comedy Sci-fi Documentary Talk) do
  Multimedia.create_category!(category)
end

{:ok, prueba} = Accounts.create_user(%{name: "Prueba", username: "prueba", password: "123456"})
{:ok, prueba2} = Accounts.create_user(%{name: "Prueba2", username: "prueba2", password: "123456"})

documentary_category = Repo.get_by(Category, name: "Documentary")
talk_category = Repo.get_by(Category, name: "Talk")

Multimedia.create_video(prueba, %{
  title: "Elixir: The Documentary",
  url: "https://www.youtube.com/watch?v=lxYFOM3UJzo",
  description: "Elixir: The Documentary",
  category_id: documentary_category.id
})

Multimedia.create_video(prueba, %{
  title: "Erlang, The Movie",
  url: "https://www.youtube.com/watch?v=xrIjfIjssLE",
  description: "Erlang: The Movie",
  category_id: documentary_category.id
})

Multimedia.create_video(prueba, %{
  title: "ElixirConf 2017 - Closing Keynote - Chris McCord",
  url: "https://www.youtube.com/watch?v=zbbK0WOvWII",
  description: "ElixirConf 2017 - Closing Keynote - Chris McCord",
  category_id: talk_category.id
})

