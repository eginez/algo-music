carp = '/Users/eginez/repos/algo-music/prefabs/arp-c.flac'

live_loop :one do
  with_fx :reverb, room: 1 do
  with_fx :slicer, phase: 0.125 do
    with_fx :wobble, phase: 4.5, invert_wave: 0 do
      sample carp, finish: 0.20,  rate: 0.9, lpf: 80
      sample carp, finish: 0.20,  rate: 0.9, hpf: 50, onset: 1
      sleep 4
    end
  end
end
end


live_loop :db do
  sample :bd_haus
  sleep 0.6
end
