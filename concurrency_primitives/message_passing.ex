send(self, "a message")

receive do
    message -> IO.inspect message
end

send(self, {:message, 1})

receive do
    {:message, id} ->
        IO.puts "received message #{id}"
end


receive do
    message -> IO.inspect message
    after 5000 -> IO.puts "message not received"
end