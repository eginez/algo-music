synth_cyc="#{File.expand_path "~"}/Documents/synth_cycles"
cyc_patt="#{File.expand_path "~"}/Documents/CyclicPatterns_Mini_Sp"

load_sample synth_cyc
load_sample cyc_patt

live_loop :ack do
  tick
  change  = (ring [0]*13 + [5]*10+ 4*[7])
  with_fx :reverb, reps: 32, room: 1 do
    synth :tb303, cutoff: rrand(70, 120), note: (ring :e1, :e2, :e3).tick + 12 - change.look ,  release: 0.1
  end
  sleep 0.15
end
