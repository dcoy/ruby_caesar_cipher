#!/usr/bin/env ruby
# frozen_string_literal: true
#
def cipher(msg, offset)
  alphabet = ('a'..'z').to_a
  return_string = ''

  msg.split('').each do |message|
    if message != ' '
      msg_index = alphabet.index(message)
      new_position = msg_index + offset.to_i
      new_alphabet_index = new_position % 26
      return_string += alphabet[new_alphabet_index]
    else
      return_string += ' '
    end
  end
  puts return_string
end

cipher('test', 5)
