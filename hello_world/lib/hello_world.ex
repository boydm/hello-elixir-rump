defmodule HelloWorld do
  use Application

  def start( _type, _args ) do
    import Supervisor.Spec, warn: false

    IO.puts( "Hello World" )

    children = []

    # supervise/2 is imported from Supervisor.Spec
    opts = [strategy: :one_for_one]
    Supervisor.start_link(children, opts)
  end

end
