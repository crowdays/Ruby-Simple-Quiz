 
#color
RED = "\e[31m"
GREEN = "\e[32m"
YELLOW = "\e[33m"
BLUE = "\e[34m"
Purple = "\e[35m"
T = "\e[36m"
STOP_COLOR = "\e[0m"

#questions in array
questions = [
  "aWhich of the following is an empty array in Ruby?\n#{Purple}(a)#{STOP_COLOR} []\n#{YELLOW}(b)#{STOP_COLOR} [0]\n#{GREEN}(c)#{STOP_COLOR} [nil]\n#{T}(d)#{STOP_COLOR} [\"\"]\n",
  "#{BLUE}What is the result of [1, 2, 3] + [4, 5] in Ruby?\n#{Purple}(a)#{STOP_COLOR} [1, 2, 3, 4, 5]\n#{YELLOW}(b)#{STOP_COLOR} [1, 2, 4, 5, 3]\n#{GREEN}(c)#{STOP_COLOR} [4, 5, 1, 2, 3]\n#{T}(d)#{STOP_COLOR} [1, 2, 3, [4, 5]]\n",
  "#{BLUE}What method can be used in Ruby to add an element to the end of an array?\n#{Purple}(a)#{STOP_COLOR} append\n#{YELLOW}(b)#{STOP_COLOR} add\n#{GREEN}(c)#{STOP_COLOR} push\n#{T}(d)#{STOP_COLOR} insert\n",
  "#{BLUE}What is the output of the following code?\n#{STOP_COLOR}arr = [4, 2, 6, 1]\narr.sort\nputs arr\n#{Purple}(a)#{STOP_COLOR} [4, 2, 6, 1]\n#{YELLOW}(b)#{STOP_COLOR} [1, 2, 4, 6]\n#{GREEN}(c)#{STOP_COLOR} 4 2 6 1\n#{T}(d)#{STOP_COLOR} None of the above\n",
  "#{BLUE}Which of the following is a valid way to create a new array in Ruby?\n#{Purple}(a)#{STOP_COLOR} arr = {}\n#{YELLOW}(b)#{STOP_COLOR} arr = []\n#{GREEN}(c)#{STOP_COLOR} arr = array()\n#{T}(d)#{STOP_COLOR} arr = array[]\n"
]
#answer choices
answers = ["a", "a", "c", "b", "b"]

#date
require 'date'


# welcome message
puts "#{RED}|-----------------------------------------------------------------------------------------------|#{STOP_COLOR}"
puts"#{RED}|--#{STOP_COLOR}#{Time.now.strftime("%B %d, %Y")}#{RED}----------------------------------------------------------------------------|"
puts"#{RED}|--#{STOP_COLOR}Lorenzo Juarez#{RED}----------------------------#{STOP_COLOR}Q and A#{RED}--------------------------------------------|"
puts"|-------------------------------------------#{STOP_COLOR}---------#{RED}-------------------------------------------|"
puts "|-----------------------------------------------------------------------------------------------|#{STOP_COLOR}"
puts" Welcome to Q and A"
puts" To escape loop type close"
loop do
  # initialize variables to keep track of correct and incorrect answers
  correct = 0
  incorrect = 0

  # loop through questions and get user input
  questions.each_with_index do |question, index|
    puts "Question #{index+1}: #{question}"
    user_answer = gets.chomp.downcase

    if user_answer == "close" || user_answer == "exit"
      puts "Thanks for playing! Exiting the program now."
      exit
    elsif user_answer == answers[index]
      puts "Correct\n"
      correct += 1
    else
      puts "Oops - the correct answer is #{answers[index]}\n"
      incorrect += 1
    end
  end

  # calculate and display percentage of correct answers
  total_questions = questions.length
  percentage = (correct.to_f / total_questions) * 100
  puts "You correctly answered #{correct} out of #{total_questions} questions which is #{RED}#{percentage}%\n\n"
end



