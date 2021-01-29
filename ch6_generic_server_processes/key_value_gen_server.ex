defmodule KeyValueStore do
  use GenServer

  def start(initial_state \\ %{}) do
    GenServer.start(__MODULE__, initial_state)
  end

  def init(initial_state) do
    {:ok, initial_state}
  end

  def put(pid, key, value) do
    GenServer.cast(pid, {:put, key, value})
  end

  def get(pid, key) do
    GenServer.call(pid, {:get, key})
  end

  def handle_cast({:put, key, value}, state) do
    {:noreply, Map.put(state, key, value)}
  end

  def handle_call({:get, key}, _, state) do
    {:reply, Map.get(state, key), state}
  end
end
