require_relative "../interpreter"

interpreter = Interpreter.new
interpreter.eval(File.read("test.blang").chomp)

