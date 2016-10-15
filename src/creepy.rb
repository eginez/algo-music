live_loop :s do
    with_fx :reverb  do
        i = 1
        5.times do 
            sample :ambi_piano
            sleep 1
            inc i
        end
        10.times do 
            sample :ambi_piano, pitch: rrand(-1,1)
            sleep 1
        end
    end
end

 live_loop :beats do
   use_synth :fm
   sleep 5
   loop do
     20.times do
       sample :drum_bass_hard, amp: 0.2
       sleep 0.25
       play :e2, release: 0.2
       sample :elec_cymbal, rate: 12, amp: 0.5
       sleep 0.25
     end
   end
 end

live_loop :scream do
    sleep 20
    puts "Screaaaaam"
    sample :ambi_haunted_hum
    sleep 5
end

first = true
live_loop :crw do
    if first then sleep 15 else sleep choose [0.5, 1, 2, 4] end
    t = choose [2,4,6,8]
    t.times do 
        sample :misc_crow, finish: 0.9
        sleep 0.5
    end
    first = false
end
