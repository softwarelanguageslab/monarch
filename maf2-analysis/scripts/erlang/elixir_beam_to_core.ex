#!/usr/bin/env elixir

[beam_file] = System.argv()

# Read BEAM file
beam_path = Path.expand(beam_file) |> String.to_charlist()
{:ok, {module, [{:debug_info, debug_info}]}} = :beam_lib.chunks(beam_path, [:debug_info])

# Extract Erlang AST using Elixir's backend
{:debug_info_v1, :elixir_erl, metadata} = debug_info
{:ok, core} = :elixir_erl.debug_info(:core_v1, module, metadata, [])

# Pretty print
core_text = :core_pp.format(core) #|> :erlang.list_to_binary()
IO.puts(core_text)

# Save
File.write!("#{module}.core", core_text)
