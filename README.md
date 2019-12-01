# Rumbl

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

## Install Rumbl
* Install Erlang y Elixir [https://gist.github.com/rubencaro/6a28138a40e629b06470]
* Install Postgresql Client 

      sudo apt install postgresql-client-11
      
* Install Node 13 [https://linuxize.com/post/how-to-install-node-js-on-ubuntu-18.04/#installing-node-js-and-npm-using-nvm]

* Install Phoenix 

      mix archive.install  hex phx_new  
      mix phx.new -v
      
* Install Postgresql client: 
    
      sudo apt install postgresql-client-11
            
* Create Project

      mix phx.new rumbl
      cd rumbl
      cd assets
      npm install
      cd ..
      (Edit and configure Rumbl.Repo on rumble/config/dev.exs )
      mix ecto.create 
     
* Run Server

      mix phx.server

* enter into Rumble console 
 
      iex -S mix
      iex> alias Rumble.Accounts
      iex> alias Rumble.Accounts.User
      iex> Accounts.list_users()
      iex> Accounts.get_user("1")
      iex> Accounts.get_user_by(name: "Bruce")
      
* Show Routes

    $ mix phx.routes      
      
## Ecto and Changesets
      
* Add a Migration       

      $ mix ecto.gen.migration create_users
      
* After create table on migration file      
      
      $ mix ecto.migrate
      
* Create & migrate for TEST

      MIX_ENV=test mix ecto.create
      MIX_ENV=test mix ecto.migrate
      
* Insert elements through iex/mix console            

      $ iex -S mix 
      iex> alias Rumbl.Repo
      iex> alias Rumbl.Accounts.User
      iex> Repo.insert(%User{name: "José", username: "josevalim"}) 
      iex> Repo.insert(%User{name: "Bruce", username: "redrapids"}) 
      iex> Repo.insert(%User{name: "Chris", username: "mccord"}) 
      
* Obtain Dependencies

      mix deps.get      
      
* Update all passwords

      $ iex -S mix 
      iex(1)> alias Rumbl.Repo
      iex(2)> alias Rumbl.Accounts.User
      iex(3)> alias RumblWeb.Router.Helpers, as: Routes
      iex(4)> for u <- Repo.all(User) do                                           
      ...(4)>   Repo.update!(User.registration_changeset(u, %{password: "temppass"}))
      ...(4)> end
     
* Generating Web interfaces     
     
      $ mix phx.gen.html Multimedia Video videos user_id:references:users \
      url:string title:string description:text
       
      $ mix ecto.migrate
      $ mix ecto.rollback
      $ mix ecto.migrate

* Generate the Multimedia.Category schema like this:

      $ mix phx.gen.schema Multimedia.Category categories name:string
      $ mix ecto.gen.migration add_category_id_to_video
      $ mix ecto.migrate
      
* Run priv/repo/seeds.exs

      $ mix run priv/repo/seeds.exs
      