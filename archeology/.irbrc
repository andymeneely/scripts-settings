# Save history between sessions
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

# Pretty-print in IRB, e.g. ActiveRecord queries
require 'hirb'
Hirb.enable

