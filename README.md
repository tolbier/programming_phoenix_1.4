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
      
      
        
      