#!/usr/bin/env ruby

module Egorka
    @@firstA = File.readlines( './dict/firstA.txt' )
    @@firstB = File.readlines( './dict/firstB.txt' )
    @@secondA = File.readlines( './dict/secondA.txt' )
    @@secondB = File.readlines( './dict/secondB.txt' )
    @@third = File.readlines( './dict/third.txt' )
    @@fourth = File.readlines( './dict/fourth.txt' )

    def self.what_is_my_oborona
        oborona = []
        if [true,false].sample
            oborona << @@firstA.sample.strip
            oborona << @@secondA.sample.strip
        else
            oborona << @@firstB.sample.strip
            oborona << @@secondB.sample.strip
        end

        oborona << @@third.sample.strip
        oborona << @@fourth.sample.strip

        oborona.join(' ')
    end
end